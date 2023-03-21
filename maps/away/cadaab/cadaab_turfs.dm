/turf/simulated/floor/exoplanet/cadaab
	name = "stone"
	desc = "Guess you could call it a RED STONE."
	icon = 'maps/away/cadaab/icons/turfs.dmi'
	icon_state = "stone"
	color = null
	diggable = 0

/turf/simulated/floor/exoplanet/cadaab/road
	name = "scorched sand" // I don't know what the fuck it's called
	desc = "Guess you could call it a RED STONE."
	icon = 'maps/away/cadaab/icons/turfs.dmi'
	icon_state = "road"
	diggable = 0

/turf/simulated/floor/exoplanet/desert/cadaab
	name = "sand"
	desc = "It's coarse and gets everywhere."
	icon = 'maps/away/cadaab/icons/turfs.dmi'
	icon_state = "sand0"
	color = null
	footstep_type = /decl/footsteps/sand

/turf/simulated/floor/exoplanet/desert/cadaab/Initialize()
	.=..()
	icon_state = "sand[rand(0,6)]"
	set_light(1, 1, 5, l_color = "#FF9D8E")

/turf/simulated/mineral/cadaab
	name = "rock"
	icon = 'maps/away/cadaab/icons/turfs.dmi'
	icon_state = "rock"
	color = null
	mined_turf = /turf/simulated/floor/exoplanet/cadaab

/turf/unsimulated/cadaab/rock
	name = "impassable rock"
	desc = "It's a particularly tough rock here."
	icon = 'maps/away/cadaab/icons/turfs.dmi'
	icon_state = "rock"
	opacity = 1
	density = TRUE
	blocks_air = 1

/decl/flooring/cadaab_wood
	name = "wooden floor"
	desc = "Polished wood planks."
	icon = 'maps/away/cadaab/icons/turfs.dmi'
	icon_base = "wooden0"
	has_damage_range = 6
	damage_temperature = T0C+200
	descriptor = "planks"
	build_type = /obj/item/stack/tile/cadaab_wood
	flags = TURF_CAN_BREAK | TURF_IS_FRAGILE | TURF_REMOVE_SCREWDRIVER
	footstep_type = /decl/footsteps/wood

/turf/simulated/floor/cadaab_wood
	name = "wooden floor"
	icon = 'maps/away/cadaab/icons/turfs.dmi'
	icon_state = "wooden0"
	initial_flooring = /decl/flooring/cadaab_wood

/turf/simulated/floor/cadaab_wood/Initialize()
	.=..()
	icon_state = "wooden[rand(0,3)]"

/obj/item/stack/tile/cadaab_wood
	name = "wood floor tile"
	singular_name = "wood floor tile"
	desc = "An easy to fit wooden floor tile."
	icon_state = "tile-wood"
	matter = list(MATERIAL_WOOD = 450)

/turf/simulated/floor/grass/cadaab

/turf/simulated/floor/grass/cadaab/Initialize()
	.=..()
	set_light(1, 1, 5, l_color = "#FF9D8E")