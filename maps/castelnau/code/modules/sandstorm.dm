/datum/sandstorm
	var/list/storm_areas = list() //Areas where sandstorm will damage peoples

/datum/sandstorm/New()
	for(var/area/cadaab/cadaab_area in world)
		if(cadaab_area.outside == TRUE)
			storm_areas += cadaab_area

/datum/sandstorm/proc/check_loc(var/mob/living/carbon/human/unlucky)
	var/checking_area = get_area(unlucky)
	if(is_type_in_list(checking_area, storm_areas))
		return TRUE
	else
		return FALSE

/datum/sandstorm/proc/is_coming()
	log_and_message_admins("Amogus2")
	for(var/mob/living/carbon/human/unlucky in shuffle(GLOB.living_mob_list_))
		if(check_loc(unlucky))
			to_chat(unlucky, SPAN_WARNING("In the distance you see huge clouds of sand coming towards you... Less than ten minutes and they'll be here."))

	sleep(5 SECONDS)

	for(var/mob/living/carbon/human/unlucky in shuffle(GLOB.living_mob_list_))
		if(check_loc(unlucky))
			to_chat(unlucky, SPAN_WARNING("Large clouds of sand, illuminated by flashes of lightning, get closer and closer to your location..."))
			playsound(unlucky, 'sound/effects/bos/lighting.ogg', 40)

	sleep(5 SECONDS)

	for(var/mob/living/carbon/human/unlucky in shuffle(GLOB.living_mob_list_))
		if(check_loc(unlucky))
			to_chat(unlucky, SPAN_WARNING("Many grains of sand are already reaching you. A couple of minutes more and a huge cloud of sand will cover everything around you."))

	sleep(2 SECONDS)

	for(var/mob/living/carbon/human/unlucky in shuffle(GLOB.living_mob_list_))
		if(check_loc(unlucky))
			to_chat(unlucky, SPAN_WARNING("A sandstorm slowly absorbs the entire horizon, getting closer..."))

	sleep(30 SECONDS)

	for(var/mob/living/carbon/human/unlucky in shuffle(GLOB.living_mob_list_))
		if(check_loc(unlucky))
			to_chat(unlucky, SPAN_WARNING("Along with the horizon, the sand swallows up the sun, bringing darkness and death."))

	for(var/turf/simulated/floor/exoplanet/desert/cadaab/target_turf in world) //Off light everwhere in Cadaab
		target_turf.set_light(0, 0, 0)

	for(var/turf/simulated/floor/inaks/target_turf in world)
		target_turf.set_light(0, 0, 0)

	for(var/turf/simulated/floor/grass/cadaab/target_turf in world)
		target_turf.set_light(0, 0, 0)

	sleep(15 SECONDS)

	for(var/mob/living/carbon/human/unlucky in shuffle(GLOB.living_mob_list_))
		if(check_loc(unlucky))
			to_chat(unlucky, "<font size='4' color='red'><b>Another bolt of lightning flashes and the sandstorm, already blocking the entire horizon and the sun, is just a ten seconds away... Nothing seemed to be able to save from it...</b></font>")
			playsound(unlucky, 'sound/effects/bos/lighting.ogg', 100)
			playsound(unlucky, 'sound/effects/bos/sandstorm_coming.ogg', 100)

	sleep(10 SECONDS)

	for(var/area/cadaab/areas in world)
		if(areas.outside == TRUE)
			areas.forced_ambience = list('sound/ambience/bos/super_sandstorm.ogg')
			areas.ambience = list('sound/effects/bos/lighting.ogg')
			areas.sandstorm_container = src
		else
			areas.forced_ambience = list('sound/ambience/bos/super_sandstorm_indoor.ogg')
			areas.ambience = list('sound/effects/bos/lighting.ogg')


	for(var/mob/living/carbon/human/unlucky in shuffle(GLOB.living_mob_list_))
		if(check_loc(unlucky))
			to_chat(unlucky, "<font size='15' color='red'><b>It has begun.</b></font>")
			to_chat(unlucky, SPAN_DANGER("A sudden strong rush of wind knocks you down!"))
			unlucky.Weaken(Floor(2))
			sound_to(unlucky, sound('sound/ambience/bos/super_sandstorm.ogg', volume = 50))
			personal_hell(unlucky)

	for(var/obj/machinery/noisetv/broadcast in world)
		broadcast.endnoise()

/datum/sandstorm/proc/personal_hell(var/mob/living/carbon/human/unlucky)
	unlucky.overlay_fullscreen("sand", /obj/screen/fullscreen/sandstorm)
	unlucky.overlay_fullscreen("sand2", /obj/screen/fullscreen/sandstorm/second)

	while(check_loc(unlucky))
		unlucky.apply_damage(3, DAMAGE_BRUTE, pick(BP_L_LEG, BP_R_LEG, BP_L_HAND, BP_R_HAND, BP_HEAD, BP_CHEST))
		if(prob(20))
			to_chat(unlucky, SPAN_DANGER(pick("Sand particles fly into your body in large masses, causing noticeable damage.", "The wind blows so hard that you can barely stand on your feet.")))
		if(prob(5))
			to_chat(unlucky, SPAN_DANGER("A sudden strong rush of wind knocks you down!"))
			unlucky.Weaken(Floor(4))
		if(prob(5))
			playsound(unlucky, 'sound/effects/bos/lighting.ogg', 100)
		sleep(3 SECONDS)

	unlucky.clear_fullscreen("sand")
	unlucky.clear_fullscreen("sand2")

// FULLSCREENS //
//   EFFECTS   //

/obj/screen/fullscreen/sandstorm
	icon = 'icons/bos/mob/screen_full.dmi'
	icon_state = "sandstorm1"
	layer = DAMAGE_LAYER
	alpha = 0

/obj/screen/fullscreen/sandstorm/Initialize()
	. = ..()
	animate(src, alpha = rand(55, 70), time = rand(40, 60))

/*
/obj/screen/fullscreen/sandstorm/on_update_icon() Animation dont want work, idk why
	. = ..()
	animation()

/obj/screen/fullscreen/sandstorm/proc/animation()
	while(layer == DAMAGE_LAYER) //Always true. Below we create illusion of animation, randoming alpha
		var/new_alpha
		var/alpha_time
		new_alpha = alpha + rand(-20, 20)
		alpha_time = rand(7, 15)
		if((new_alpha << 80) || (new_alpha >> 200)) //Dont give alpha up/fall too much
			new_alpha = 140
		animate(src, alpha = new_alpha, time = alpha_time)
		sleep(alpha_time)
*/

/obj/screen/fullscreen/sandstorm/second
	icon_state = "sandstorm2"

//     AREAS     //
// SPECIAL PROCS //

/area/cadaab/Entered(var/mob/living/carbon/human/unlucky)
	. = ..()
	if(sandstorm_container != null)
		sandstorm_container.personal_hell(unlucky)
	else
		return
