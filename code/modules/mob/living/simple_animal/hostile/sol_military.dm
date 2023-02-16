/obj/item/projectile/plasma/for_ai
	color = COLOR_BLUE_LIGHT

/obj/item/gun/energy/k342/prereg/for_ai
	projectile_type = /obj/item/projectile/plasma/for_ai

/mob/living/simple_animal/hostile/sol_military
	name = "SCG Army soldier"
	desc = "Your enemy."
	icon = 'icons/mob/simple_animal/sol_military.dmi'
	icon_state = "solmil"
	icon_living = "solmil"
	icon_dead = "solmil_dead"
	icon_gib = "solmil_gib"
	turns_per_move = 5
	ranged = 1
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "stabs"
	speed = 4
	maxHealth = 100
	health = 100
	harm_intent_damage = 10
	can_escape = TRUE
	a_intent = I_HURT
//	var/corpse = /obj/effect/landmark/corpse/sol_military
	var/list/dropped_weapon = list(/obj/item/gun/projectile/heavysniper/boltaction/bad)
	var/obj/item/gun/choosen_weapon = /obj/item/gun/projectile/heavysniper/boltaction/bad
	unsuitable_atmos_damage = 15
	faction = "sol"
	status_flags = CANPUSH

	ai_holder = /datum/ai_holder/simple_animal/humanoid
	say_list_type = /datum/say_list/sol

/mob/living/simple_animal/hostile/sol_military/New()
	choosen_weapon = pick(dropped_weapon)
	var/weapon = new choosen_weapon
	var/obj/item/projectile/P
	if(istype(weapon, /obj/item/gun/energy))
		var/obj/item/gun/energy/W = weapon
		P = new W.projectile_type
		projectiletype = P.type
		projectilesound = P.fire_sound
		qdel(W)
	else
		var/obj/item/gun/projectile/W = weapon
		var/obj/item/ammo_casing/A = new W.ammo_type
		P = new A.projectile_type
		casingtype = W.ammo_type
		projectiletype = P.type
		projectilesound = P.fire_sound
		qdel(A)
		qdel(W)

	qdel(P)
	. = ..()

/mob/living/simple_animal/hostile/sol_military/death(gibbed, deathmessage, show_dead_message)
	..(gibbed, deathmessage, show_dead_message)
//	if(corpse)
//		new corpse (src.loc)
	if(dropped_weapon)
		new choosen_weapon (src.loc)
//	qdel(src)
	return

/mob/living/simple_animal/hostile/sol_military/elite
	icon_state = "solelite"
	icon_living = "solelite"
	icon_dead = "solelite_dead"
	icon_gib = "solelite_dead"
	dropped_weapon = list(/obj/item/gun/energy/laser/bad)
	choosen_weapon = /obj/item/gun/energy/laser/bad
	maxHealth = 150
	health = 150