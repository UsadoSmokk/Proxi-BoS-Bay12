GLOBAL_DATUM_INIT(mini_role, /datum/antagonist/mini_roles, new)

/datum/antagonist/mini_roles
	id = MODE_MINI_ROLES
	role_text = "Mini Role"
	role_text_plural = "Mini Roles"
	antaghud_indicator = "hud_traitor"
	flags = ANTAG_RANDSPAWN | ANTAG_VOTABLE
	welcome_text = "Хаха, мини роль делает пиу-пиу"
	antag_text = "Если Вы видите этот текст, то что-то сломалось. Попросите Стивена починить."
	blacklisted_jobs = list()
	skill_setter = null
	min_player_age = 0

	var/datum/mini_role/mini_role_datum //Container for last mini role
	var/list/datum/mini_role/all_mini_roles_datums = list() //All in round roles
	//Whitelists of mini roles for every branch. Don't forget put new mini roles here
	var/list/regcom_roles = list(/datum/mini_role/creditor, /datum/mini_role/pyroman)
	var/list/syndicate_roles = list(/datum/mini_role/rat, /datum/mini_role/creditor, /datum/mini_role/pyroman)
	var/list/traders_roles = list(/datum/mini_role/contrabandist, /datum/mini_role/rat, /datum/mini_role/creditor, /datum/mini_role/link)
	var/list/scum_roles = list(/datum/mini_role/contrabandist, /datum/mini_role/contractor, /datum/mini_role/rat, /datum/mini_role/cannibal, /datum/mini_role/pyroman, /datum/mini_role/torch, /datum/mini_role/link) //Barbars and zeki
	var/list/other_roles = list(/datum/mini_role/contrabandist, /datum/mini_role/contractor, /datum/mini_role/pyroman, /datum/mini_role/torch, /datum/mini_role/link)

/datum/antagonist/mini_roles/create_antagonist(var/datum/mind/target, var/move, var/gag_announcement, var/preserve_appearance)

	//Mostly default proc copy paste, but with pick of mini role datum
	if(!target)
		return

	var/checks_passed = FALSE
	var/choosen_role
	while(checks_passed == FALSE)
		if(ishuman(target.current))
			var/mob/living/carbon/human/man_on_check = target.current
			switch(man_on_check.char_branch.name)
				if("Regulators") choosen_role = pick(regcom_roles)
				if("Consortium of Trans-Star Corporations") choosen_role = pick(syndicate_roles)
				if("Free Trade Union") choosen_role = pick(traders_roles)
				if("Alternatively Hired") choosen_role = pick(scum_roles)
				if("Aborigens") choosen_role = pick(scum_roles)
				else choosen_role = pick(other_roles)
		else
			choosen_role = pick(other_roles)

		mini_role_datum = new choosen_role
		mini_role_datum.owner = target
		all_mini_roles_datums += mini_role_datum
		if(!mini_role_datum.additional_check(target.current))
			qdel(mini_role_datum)
			continue

		if(mini_role_datum.double)
			if(mini_role_datum.double_act(target))
				checks_passed = TRUE
			else
				qdel(mini_role_datum)
		else
			checks_passed = TRUE

	//Check of target validicity on role
	update_antag_mob(target, preserve_appearance)
	if(!target.current)
		remove_antagonist(target)
		return 0
	if(flags & ANTAG_CHOOSE_NAME)
		spawn(1)
			set_antag_name(target.current)
	if(move)
		place_mob(target.current)
	update_leader()
	update_icons_added(target)
	greet(target)
	if(!gag_announcement)
		announce_antagonist_spawn()

/datum/antagonist/mini_roles/greet(var/datum/mind/player)

	// Takes things from picked mini role datum
	player.special_role = mini_role_datum.name
	var/name = mini_role_datum.name
	var/desc = mini_role_datum.desc
	to_chat(player.current, "<span class='danger'><font size=4>Вы - [name]!</font></span>")
	if(leader_welcome_text && player == leader)
		to_chat(player.current, "<span class='antagdesc'>[get_leader_welcome_text(player.current)]</span>")
	else
		to_chat(player.current, "<span class='antagdesc'>[get_welcome_text(player.current)]</span>")
	to_chat(player.current, "[desc]")

	mini_role_datum.special_act(player.current)
	create_objectives(player)
	src.show_objectives_at_creation(player)
	return 1

/datum/antagonist/mini_roles/create_objectives(var/datum/mind/player)
	var/datum/objective/micro_obj = new
	micro_obj.owner = player
	micro_obj.explanation_text = mini_role_datum.objective
	player.objectives |= micro_obj
	if(mini_role_datum.second_objective)
		var/datum/objective/second_micro_obj = new
		second_micro_obj.owner = player
		second_micro_obj.explanation_text = mini_role_datum.second_objective
		player.objectives |= second_micro_obj

/datum/antagonist/mini_roles/equip(mob/living/carbon/human/player)
	if(!istype(player))
		return

	if(!mini_role_datum.gear)
		return

	var/list/slots = list (
			"backpack" = slot_in_backpack,
			"left pocket" = slot_l_store,
			"right pocket" = slot_r_store,
			"left hand" = slot_l_hand,
			"right hand" = slot_r_hand,
		)

	if(mini_role_datum.random_gear)
		var/random_count = 0
		while(random_count != mini_role_datum.random_gear)
			var/thing = pick(mini_role_datum.gear)
			mini_role_datum.gear -= thing
			var/obj/spawned_thing = new thing(get_turf(player))
			for(var/slot in slots)
				player.equip_to_slot(spawned_thing, slot)
				if(spawned_thing.loc == player)
					break
			var/obj/item/storage/S = locate() in player.contents
			if(istype(S))
				spawned_thing.forceMove(S)
			random_count += 1
	else
		for(var/thing in mini_role_datum.gear)
			var/obj/spawned_thing = new thing(get_turf(player))
			for(var/slot in slots)
				player.equip_to_slot(spawned_thing, slot)
				if(spawned_thing.loc == player)
					break
			var/obj/item/storage/S = locate() in player.contents
			if(istype(S))
				spawned_thing.forceMove(S)

/////
// MINI ROLES DATUMS
/////

/datum/mini_role
	var/name
	var/desc //Explanation text for role
	var/objective //Objective text
	var/second_objective
	var/datum/mind/owner
	var/datum/mind/mini_target //Some particular target(person) for role owner
	var/no_robots = FALSE //If true, don't give this role to robot species(Full prothes included)
	var/can_latejoin = TRUE //If false, don't give this role to guys who enter after round begining
	var/list/gear = list() //What gear give to the role
	var/random_gear = FALSE //If not false, give this amount of random items from gear list

	var/double = FALSE //Is role work like bounty hunter(give targets to more than one guy)
	var/double_text //Text for second man. Keep null, if you want double man to be clueless about target on him
	var/double_objective //Target for second man

/datum/mini_role/proc/special_act(var/mob/living/carbon/human/target)
	return

/datum/mini_role/proc/double_act(var/datum/mind/obj_owner)
	var/list/possible_targets = list()
	for(var/datum/mind/possible_target in SSticker.minds)
		if((possible_target != obj_owner) && (ishuman(possible_target.current)) && (possible_target.current.stat != DEAD) && (possible_target.special_role != obj_owner.special_role))
			possible_targets += possible_target
	if(possible_targets.len > 0)
		mini_target = pick(possible_targets)
		if(double_text)
			to_chat(mini_target, "[double_text]")
			var/datum/objective/mini_target_obj = new
			mini_target_obj.owner = mini_target
			mini_target_obj.explanation_text = double_objective
			mini_target.objectives |= mini_target_obj
			show_objectives(mini_target)
		return TRUE
	else
		return FALSE

/datum/mini_role/proc/additional_check(var/mob/living/carbon/human/target)
	if(no_robots)
		if((target.species.name == SPECIES_IPC) || (target.species.name == SPECIES_ADHERENT) || (target.species.name == SPECIES_SHELL) || (target.species.name == SPECIES_FBP))
			return FALSE

	if((!can_latejoin) && (round_duration_in_ticks >> 30)) //About 3 seconds after round start
		return FALSE

	return TRUE


/datum/mini_role/contrabandist
	name = "Контрабандист"
	desc = "ЧЗХ, микро трейтор?77"
	objective = "Сохраните свой аплинк у себя."
	can_latejoin = FALSE

/datum/mini_role/contrabandist/special_act(var/mob/living/carbon/human/target)
	var/money = target.mind.assigned_job.economic_power * 1000 + rand(-20,20) * 100
	second_objective = "Имейте [money] кредитов к концу смены."
	var/TC_amount = rand(40, 80)
	var/obj/item/device/radio/uplink/U = new(target, null, TC_amount)
	var/obj/O = target.equip_to_storage(U)
	if(O)
		to_chat(target, "<span class='notice'>Uplink unit can be found in your [O.name].</span>")
	else if(target.put_in_hands(U))
		to_chat(target, "<span class='notice'>Uplink unit appear in your hands.</span>")

/datum/mini_role/contractor
	name = "Контрактник"
	desc = "Эрис момент"
	objective = "Сохраните свой аплинк у себя. Также сохраните свою роль в секрете."
	can_latejoin = FALSE

/datum/mini_role/contractor/special_act(var/mob/living/carbon/human/target)
	var/contracts_amount = rand(3,6)
	second_objective = "Выполните как минимум [contracts_amount] контрактов до конца смены."
	setup_uplink_source(target, 1)


/datum/mini_role/cannibal
	name = "Людоед"
	desc = "Есть гайских детей"
	objective = "Опробуйте хотя бы один свежий кусочек человеческой плоти к концу смены."
	no_robots = TRUE
	gear = list(/obj/item/material/knife/kitchen/cleaver, /obj/item/handcuffs, /obj/item/tape_roll, /obj/item/device/flash, /obj/item/clothing/mask/chameleon/voice, /obj/item/beartrap)
	random_gear = 2


/datum/mini_role/rat
	name = "Крыса"
	desc = "Доносики"
	objective = "Сохраните свою роль и работодателя в тайне."
	gear = list(/obj/item/storage/box/syndie_kit/spy, /obj/item/spacecash/bundle/c2000, /obj/item/storage/box/radiokeys, /obj/item/device/uv_light, /obj/item/device/camera, /obj/item/device/taperecorder)
	random_gear = 2

/datum/mini_role/rat/special_act(var/mob/living/carbon/human/target)
	var/hirer = pick("Ассамблею Альянса", "Посольство ЛСС", "Представительство Синдиката", "Совет ВТС")
	second_objective = "Отправьте через факс в [hirer] компрометирующую информацию о миссии на Кадаабе или её членах."


/datum/mini_role/creditor
	name = "Кредитор"
	desc = "Где деньги"
	double = TRUE

/datum/mini_role/creditor/special_act(var/mob/living/carbon/human/target)
	var/debt
	debt = mini_target.assigned_job.economic_power * 1000 - rand(-40,1) * 100
	objective = "[mini_target]([mini_target.assigned_job.title]) задолжал Вам [debt] кредитов. Добейтесь от должника возвращения долга до конца смены."
	double_text = "<span class='danger'><font size=3>Вы вспоминаете, что то ли по пьяне, то ли из-за смертельной угрозы, то ли просто по случайности, но Вы должны [owner] [debt] кредитов. Не сказать, что бы Вам хотелось с ними раставаться...</font></span>"
	double_objective = "Избегать отдачи долга в [debt] кредитов [owner]([owner.assigned_job.title])."


/datum/mini_role/pyroman
	name = "Пироман"
	desc = "Ай феар нот мэн, бат..."
	objective = "Наслаждайтесь огнём. Сдережируйте небольшой пожар, став его главным зрителем."
	gear = list(/obj/item/storage/firstaid/fire, /obj/item/storage/box/beakers, /obj/item/storage/box/matches, /obj/item/reagent_containers/food/drinks/bottle/specialwhiskey, /obj/item/flamethrower, /obj/item/clothing/mask/gas/cbrn)
	random_gear = 2


/datum/mini_role/torch
	name = "Торчок"
	desc = "Хе-хе"
	objective = "Запасите несколько доз на будущее. Чем больше - тем лучше."
	no_robots = TRUE
	gear = list(/obj/item/seeds/ambrosiadeusseed, /obj/item/reagent_containers/hypospray/autoinjector/mindbreaker, /obj/item/storage/firstaid/toxin, /obj/item/storage/box/syringes, /obj/item/storage/pill_bottle/three_eye, /obj/item/gun/projectile/pistol/holdout)
	random_gear = 2


/datum/mini_role/link
	name = "Связной"
	desc = "Шпион драмма"
	objective = "Найдите агента, которому Вы должны передать информацию о том, что "
	double = TRUE
	double_text = "<span class='danger'><font size=3>Где-то рядом с Вами должен находится связной, который может обладать интересной и полезной информацией. Найдите его и получите эту информацию.</font></span>"
	double_objective = "Найдите и установите контакт с связным."
	gear = list()
	random_gear = 2

	//Put names of possible coop roles in list below
	var/connected_roles = list("Крыса", "Контрактник")

/datum/mini_role/link/additional_check(var/mob/living/carbon/human/target)
	var/try_amount = 0
	var/list/unmasked_roles = list()
	while(try_amount != 4)
		var/datum/mini_role/picked_role = pick(GLOB.mini_role.all_mini_roles_datums)
		if((is_type_in_list(picked_role.name, connected_roles)) || (picked_role.owner == target.mind))
			try_amount += 1
			continue
		unmasked_roles += picked_role
		try_amount += 1

	if(unmasked_roles.len == 0)
		return FALSE

	for(var/datum/mini_role/unmasked in unmasked_roles)
		var/add_text = "[unmasked.owner]([unmasked.owner.assigned_job.title]) - [unmasked.name],"
		objective += add_text
	return TRUE


/datum/mini_role/link/double_act(var/datum/mind/obj_owner)
	var/list/possible_targets = list()
	for(var/datum/mind/possible_target in SSticker.minds)
		if((ishuman(possible_target.current)) && (possible_target.current.stat != DEAD) && (is_type_in_list(possible_target.special_role, connected_roles)))
			possible_targets += possible_target
	if(possible_targets.len > 0)
		mini_target = pick(possible_targets)
		to_chat(mini_target, "[double_text]")
		to_chat(mini_target, "<u><b>Для поиска потенциальных союзников Вы были снабжены опозновательными словами:</b></u>")
		to_chat(mini_target, "<b>Кодовые слова</b>: <span class='danger'>[GLOB.antag_code_phrase]</span>")
		to_chat(mini_target, "<b>Кодовые ответы</b>: <span class='danger'>[GLOB.antag_code_response]</span>")
		mini_target.StoreMemory("<b>Кодовые слова</b>: [GLOB.antag_code_phrase]", /decl/memory_options/system)
		mini_target.StoreMemory("<b>Кодовые ответы</b>: [GLOB.antag_code_response]", /decl/memory_options/system)

		to_chat(owner, "<u><b>Для поиска потенциальных союзников Вы были снабжены опозновательными словами:</b></u>")
		to_chat(owner, "<b>Кодовые слова</b>: <span class='danger'>[GLOB.antag_code_phrase]</span>")
		to_chat(owner, "<b>Кодовые ответы</b>: <span class='danger'>[GLOB.antag_code_response]</span>")
		owner.StoreMemory("<b>Кодовые слова</b>: [GLOB.antag_code_phrase]", /decl/memory_options/system)
		owner.StoreMemory("<b>Кодовые ответы</b>: [GLOB.antag_code_response]", /decl/memory_options/system)

		var/datum/objective/mini_target_obj = new
		mini_target_obj.owner = mini_target
		mini_target_obj.explanation_text = double_objective
		mini_target.objectives |= mini_target_obj
		show_objectives(mini_target)
		return TRUE
	else
		return FALSE
