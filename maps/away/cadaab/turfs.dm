/turf/simulated/floor/exoplanet/cadaab
	name = "stone"
	desc = "Guess you could call it a RED STONE."
	icon = 'maps/castelnau/locations/cadaab/icons/turfs.dmi'
	icon_state = "stone"
	color = null
	diggable = 0

/turf/simulated/floor/exoplanet/cadaab/road
	name = "scorched sand" // I don't know what the fuck it's called
	desc = "Guess you could call it a RED STONE."
	icon = 'maps/castelnau/locations/cadaab/icons/turfs.dmi'
	icon_state = "road"
	diggable = 0

/turf/simulated/floor/exoplanet/desert/cadaab
	name = "sand"
	desc = "It's coarse and gets everywhere."
	icon = 'maps/castelnau/locations/cadaab/icons/turfs.dmi'
	icon_state = "sand0"
	color = null
	footstep_type = /decl/footsteps/sand

/turf/simulated/floor/exoplanet/desert/cadaab/Initialize()
	.=..()
	icon_state = "sand[rand(0,6)]"
	set_light(3, 1, 5, l_color = "#ff8c66")

/turf/simulated/floor/exoplanet/desert/cadaab/Process()
	return PROCESS_KILL

/turf/simulated/mineral/cadaab
	name = "rock"
	icon = 'maps/castelnau/locations/cadaab/icons/turfs.dmi'
	icon_state = "rock"
	color = null
	mined_turf = /turf/simulated/floor/exoplanet/cadaab

/turf/unsimulated/wall/cadaab
	name = "distant area"
	desc = "You'll get there someday.."
	icon = 'maps/castelnau/locations/cadaab/icons/turfs.dmi'
	icon_state = "nah"
	density = TRUE
	layer = ABOVE_HUMAN_LAYER
	opacity = 1
	blocks_air = 1

/turf/unsimulated/cadaab/rock
	name = "impassable rock"
	desc = "It's a particularly tough rock here."
	icon = 'maps/castelnau/locations/cadaab/icons/turfs.dmi'
	icon_state = "rock"
	opacity = 1
	density = TRUE
	blocks_air = 1