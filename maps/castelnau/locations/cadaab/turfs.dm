/turf/simulated/floor/exoplanet/cadaab
	name = "stone"
	desc = "Guess you could call it a RED STONE."
	icon = 'maps/castelnau/locations/cadaab/icons/turfs.dmi'
	icon_state = "stone"
	color = null
	diggable = 0

/turf/simulated/floor/exoplanet/cadaab/road
	name = "parched sand" // I don't know what the fuck it's called
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
	. = ..()
	icon_state = "sand[rand(0,6)]"

/turf/simulated/mineral/cadaab
	name = "rock"
	icon = 'maps/castelnau/locations/cadaab/icons/turfs.dmi'
	icon_state = "rock"
	color = null

/turf/unsimulated/cadaab
	name = "sand"
	desc = "It's coarse and gets everywhere."
	icon = 'maps/castelnau/locations/cadaab/icons/turfs.dmi'
	icon_state = "sand0"
	opacity = 1
	density = TRUE

/turf/unsimulated/cadaab/rock
	name = "impassable rock"
	desc = "It's a particularly tough rock here."
	icon_state = "rock"