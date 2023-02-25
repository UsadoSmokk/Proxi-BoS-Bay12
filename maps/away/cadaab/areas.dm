///CADAAB///

/area/cadaab
	name = "Cadaab"
	icon = 'maps/castelnau/locations/cadaab/icons/areas.dmi'
	icon_state = "where"
	base_turf = /turf/simulated/floor/exoplanet/desert/cadaab
	planetary_surface = TRUE
//	dynamic_lighting = 0

/area/cadaab/desert
	name = "Cadaab Desert"
	icon_state = "desert"
	ambience = list('sound/effects/wind/desert0.ogg','sound/effects/wind/desert1.ogg','sound/effects/wind/desert2.ogg','sound/effects/wind/desert3.ogg','sound/effects/wind/desert4.ogg','sound/effects/wind/desert5.ogg')

///OUTPOST///

/area/cadaab/outpost
	name = "Regulators Outpost"

/area/cadaab/outpost/teleport
	name = "Outpost - Teleport"
	icon_state = "command"

/area/cadaab/outpost/med
	name = "Outpost - Medical Bay"
	icon_state = "medbay"

/area/cadaab/outpost/med/surgery
	name = "Outpost - Surgery"

/area/cadaab/outpost/eng
	name = "Outpost - Engineering"
	icon_state = "engineering"

/area/cadaab/outpost/sec
	name = "Outpost - Security"
	icon_state = "security"

/area/cadaab/outpost/sec/armory
	name = "Outpost - Armory"

/area/cadaab/outpost/living
	name = "Outpost - Living Area"
	icon_state = "living"

/area/cadaab/outpost/landing
	name = "Outpost - Landing Zone"
	icon_state = "landing"

/area/cadaab/outpost/syndishuttle
	name = "SSS PrettyBoy"
	icon_state = "syndipass"

//CAVES - NEAR THE OUTPOST//

/area/cadaab/caves
	name = "Cadaab - Caves"
	icon_state = "desert"
	base_turf = /turf/simulated/floor/exoplanet/cadaab
	dynamic_lighting = 1

/area/cadaab/caves/bunker
	name = "Vault - Security Checkpoint"
	icon_state = "security"

/area/cadaab/caves/bunker/living
	name = "Vault - Living Area"
	icon_state = "living"

/area/cadaab/caves/bunker/living/can
	name = "Vault - Canteen"

/area/cadaab/caves/bunker/living/bunk
	name = "Vault - Bunks"

/area/cadaab/caves/bunker/medsci
	name = "Vault - MedScience"
	icon_state = "medbay"

/area/cadaab/caves/bunker/engi
	name = "Vault - Engineering"
	icon_state = "engineering"

//SHAHTINSK - START//

/area/cadaab/shahtinsk
	name = "Cadaab - Shahtinsk"

/area/cadaab/shahtinsk/canteen
	name = "Shahtinsk - Canteen"
	icon_state = "living"

/area/cadaab/shahtinsk/gas
	name = "Shahtinsk - Gas Station"
	icon_state = "engineering"

/area/cadaab/shahtinsk/med
	name = "Shahtinsk - Medic"
	icon_state = "medbay"