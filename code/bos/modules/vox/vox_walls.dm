#define MATERIAL_CHITIN "vox_chitin"

/turf/simulated/wall/vox
	name = "wall"
	desc = "A huge chunk of metal used to separate rooms."
	icon_state = "chitin"
	thermal_conductivity = WALL_HEAT_TRANSFER_COEFFICIENT
	heat_capacity = 312500 //a little over 5 cm thick , 312500 for 1 m by 2.5 m by 0.25 m plasteel wall
	floor_type = /turf/simulated/floor/plating/vox

/turf/simulated/wall/vox/New(newloc, materialtype, rmaterialtype)
	. = ..(newloc, MATERIAL_CHITIN)

/turf/simulated/wall/vox/reinforced/New(newloc, materialtype, rmaterialtype)
	. = ..(newloc, MATERIAL_CHITIN, MATERIAL_CHITIN)

/material/chitin
	name = MATERIAL_CHITIN
	lore_text = "An alloy of steel and platinum. When regular high-tensile steel isn't tough enough to get the job done, the smart consumer turns to frankly absurd alloys of steel and platinum."
	wall_name = "bulkhead"
	stack_type = /obj/item/stack/material/plasteel
	integrity = 400
	melting_point = 6000
	icon_base = "vox_solid"
	icon_reinf = "vox_reinf_over"
	explosion_resistance = 25
	brute_armor = 8
	burn_armor = 10
	hardness = MATERIAL_VERY_HARD
	weight = 23
	stack_origin_tech = list(TECH_MATERIAL = 2)
	hitsound = 'sound/weapons/smash.ogg'
	construction_difficulty = MATERIAL_VERY_HARD_DIY
	alloy_materials = list(MATERIAL_STEEL = 2500, MATERIAL_PLATINUM = 1250)
	alloy_product = TRUE
	sale_price = 2
	ore_smelts_to = MATERIAL_PLASTEEL
	value = 12
