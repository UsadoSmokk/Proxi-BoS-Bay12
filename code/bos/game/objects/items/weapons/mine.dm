/obj/item/mine
	name = "mine"
	icon = 'icons/bos/obj/mine.dmi'
	icon_state = "mine_not_act"
	var/active = FALSE

/obj/item/mine/on_update_icon()
	if(active)
		icon_state = "mine_act"
	else
		icon_state = "mine_not_act"
	. = ..()

/obj/item/mine/attackby(obj/item/W, mob/user)
	. = ..()
	if(isScrewdriver(W))
		var/mob/living/carbon/human/H = user
		if(!active)
			active = TRUE
			visible_message(SPAN_WARNING("[user] activated [src]!"))
			return
		if(H.skill_check(SKILL_ELECTRICAL, SKILL_ADEPT) && prob(20*H.get_skill_value(SKILL_HAULING)))
			visible_message(SPAN_WARNING("[user] started to deactivate [src]..."))
			if(do_after(H, 10 SECONDS, src, DO_USER_SAME_HAND | DO_SHOW_PROGRESS | DO_PUBLIC_PROGRESS))
				active = FALSE
				visible_message(SPAN_INFO("With evident excitement [user] disarms [src]"))
				update_icon()
			else
				visible_message(SPAN_WARNING("[user] MAKES MISTAKE!!!"))
				detonate(usr, 1)
		else if(prob(50))
			visible_message(SPAN_WARNING("[user] MAKES MISTAKE!!!"))
			detonate(usr, 1)
	else
		if(active)
			visible_message(SPAN_WARNING("[user] MAKES MISTAKE!!!"))
			detonate(usr, 1)

/obj/item/mine/equipped(mob/user, slot)
	. = ..()
	if(active && prob(90))
		detonate(usr, 1)

/obj/item/mine/Move()
	if(active)
		detonate(usr, 1)
	else
		. = ..()

/obj/item/mine/proc/activate(mob/user)
	if(active)
		return

	if(user)
		msg_admin_attack("[user.name] ([user.ckey]) primed \a [src] (<A HREF='?_src_=holder;adminplayerobservecoodjump=1;X=[user.x];Y=[user.y];Z=[user.z]'>JMP</a>)")

	active = 1
	update_icon()

/obj/item/mine/proc/detonate(var/mob/living/carbon/human/activator, cut_arms)
	var/turf/T = get_turf(src)
	visible_message(SPAN_DANGER("Clack!"))
	if(T)
		explosion(T, -1, -1, 2, 2)

	if(activator)
		if(cut_arms == 1)	//Damage arms to man who try to deactivate mine
			activator.apply_damage(300, DAMAGE_BRUTE, pick(BP_L_ARM, BP_R_ARM))
		else	//Damage foots to man who step away from mine
			activator.apply_damage(250, DAMAGE_BRUTE, pick(BP_L_FOOT, BP_R_FOOT))

		for(var/mob/living/carbon/human/victim in src.loc)	//And damage foots for whom still stay/lay on mine
			victim.apply_damage(250, DAMAGE_BRUTE, pick(BP_L_FOOT, BP_R_FOOT))

	qdel(src)


/obj/item/mine/Crossed(var/mob/living/mob)
	if((!istype(mob, /mob/observer)) && (active))
		visible_message(SPAN_DANGER("Click..."))
		playsound(src, 'sound/effects/bos/step_on_mine.ogg', 100)
		if(prob(65))
			check_step(mob)
		else
			detonate(mob)

/obj/item/mine/proc/check_step(var/mob/living/mob)	//Checking when mob step away from mine
	while(mob.loc == src.loc)
		sleep(1)	//Just waiting

	if((mob.loc != src.loc) && (active))
		detonate(mob)
