///
//MISC THINGS
///

/obj/item/paper
	language = LANGUAGE_SPACER

/obj/item/storage/secure/briefcase/nukedisk
	startswith = list(
		/obj/item/disk/nuclear,
		/obj/item/pinpointer,
		/obj/item/folder/envelope/nuke_instructions,
		/obj/item/modular_computer/laptop/preset/custom_loadout/cheap,
//		/obj/item/folder/envelope/rep
	)

/obj/item/clothing/suit/armor/pcarrier/light/security
	accessories = list(
		/obj/item/clothing/accessory/armor_plate,
		/obj/item/clothing/accessory/storage/pouches,
	)
/turf/simulated/wall/r_wall/hull
	color = COLOR_DARK_GUNMETAL

/obj/machinery/sleeper
	icon = 'modular_mithra/icons/obj/Cryogenic2_1.dmi'

/obj/machinery/bodyscanner
	icon = 'modular_mithra/icons/obj/Cryogenic2_1.dmi'
	icon_state = "scanner_open"

/obj/machinery/bodyscanner/on_update_icon()
	if(!occupant)
		src.icon_state = "scanner_open"
	else
		src.icon_state = "scanner_green"

///decl/cultural_info/culture/nabber/b
//	valid_jobs = list(/datum/job/canworker)

/datum/language/spacer
	warning = "Automatically given if spawning on the Castelnau or with no languages"
	key = "0"
	colour = " "

/datum/language/human/lord
	key = "6"
	colour = "spacer"

/datum/language/human/euro
	warning = "Automatically given if spawning on the Big Iron."
	key = "1"
	colour = "solcom"

/datum/language/machine
	key = "8"


/datum/nano_module/supply
	admin_access = list(access_castelnau_cheapskate_cargo)

///
//SUIT STORAGE
///

/obj/machinery/suit_storage_unit/standard_unit/castelnau
	suit= /obj/item/clothing/suit/space
	helmet = /obj/item/clothing/head/helmet/space/fishbowl
	tank = /obj/item/tank/oxygen
	mask = /obj/item/clothing/mask/breath
	req_access = list(access_castelnau_eva)

/obj/machinery/suit_storage_unit/atmos/castelnau
	name = "Atmospherics Voidsuit Storage Unit"
	suit= /obj/item/clothing/suit/space/void/atmos
	helmet = /obj/item/clothing/head/helmet/space/void/atmos
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/oxygen
	mask = /obj/item/clothing/mask/breath
	req_access = list(access_castelnau_atmospherics)
	islocked = 1

/obj/machinery/suit_storage_unit/atmos/castelnau/alt
	suit= /obj/item/clothing/suit/space/void/atmos/alt
	helmet = /obj/item/clothing/head/helmet/space/void/atmos/alt
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/oxygen
	mask = /obj/item/clothing/mask/breath
	req_access = list(access_castelnau_security)

/obj/machinery/suit_storage_unit/engineering/castelnau
	name = "Engineering Voidsuit Storage Unit"
	suit= /obj/item/clothing/suit/space/void/engineering
	helmet = /obj/item/clothing/head/helmet/space/void/engineering
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/oxygen
	mask = /obj/item/clothing/mask/breath
	req_access = list(access_castelnau_engineering)
	islocked = 1

/obj/machinery/suit_storage_unit/engineering/castelnau/alt
	suit= /obj/item/clothing/suit/space/void/engineering/alt
	helmet = /obj/item/clothing/head/helmet/space/void/engineering/alt
	mask = /obj/item/clothing/mask/breath

/obj/machinery/suit_storage_unit/engineering/castelnau/salvage
	suit= /obj/item/clothing/suit/space/void/engineering/salvage
	helmet = /obj/item/clothing/head/helmet/space/void/engineering/salvage
	mask = /obj/item/clothing/mask/breath

/obj/machinery/suit_storage_unit/medical/castelnau
	name = "Medical Voidsuit Storage Unit"
	suit= /obj/item/clothing/suit/space/void/medical
	helmet = /obj/item/clothing/head/helmet/space/void/medical
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/oxygen
	mask = /obj/item/clothing/mask/breath
	req_access = list(access_castelnau_medical)
	islocked = 1

/obj/machinery/suit_storage_unit/medical/castelnau/alt
	suit= /obj/item/clothing/suit/space/void/medical/alt
	helmet = /obj/item/clothing/head/helmet/space/void/medical/alt
	mask = /obj/item/clothing/mask/breath

/obj/machinery/suit_storage_unit/mining/castelnau
	name = "Mining Voidsuit Storage Unit"
	suit= /obj/item/clothing/suit/space/void/mining
	helmet = /obj/item/clothing/head/helmet/space/void/mining
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/oxygen
	mask = /obj/item/clothing/mask/breath
	req_access = list(access_castelnau_hangar)
	islocked = 1

/obj/machinery/suit_storage_unit/mining/castelnau/alt
	suit= /obj/item/clothing/suit/space/void/mining/alt
	helmet = /obj/item/clothing/head/helmet/space/void/mining/alt
	mask = /obj/item/clothing/mask/breath

/obj/machinery/suit_storage_unit/castelnau/security
	name = "Security Voidsuit Storage Unit"
	suit= /obj/item/clothing/suit/space/void/security
	helmet = /obj/item/clothing/head/helmet/space/void/security
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/oxygen
	mask = /obj/item/clothing/mask/breath
	req_access = list(access_castelnau_brig)
	islocked = 1

/obj/machinery/suit_storage_unit/security/castelnau/alt
	suit= /obj/item/clothing/suit/space/void/security/alt
	helmet = /obj/item/clothing/head/helmet/space/void/security/alt
	mask = /obj/item/clothing/mask/breath

///
//SUIT CYCLERS
///

/obj/machinery/suit_cycler/engineering/castelnau
	name = "Engineering suit cycler"
	model_text = "Engineering"
	req_access = list(access_castelnau_engineering)
	available_modifications = list(/decl/item_modifier/space_suit/engineering, /decl/item_modifier/space_suit/atmos)
	species = list(SPECIES_HUMAN, SPECIES_SKRELL, SPECIES_UNATHI) //Add Unathi when sprites exist for their suits.

/obj/machinery/suit_cycler/engineering/castelnau/alt
	available_modifications = list(
		/decl/item_modifier/space_suit/engineering/alt,
		/decl/item_modifier/space_suit/atmos/alt,
		/decl/item_modifier/space_suit/hazard
	)

/obj/machinery/suit_cycler/mining/castelnau
	name = "Mining suit cycler"
	model_text = "Mining"
	req_access = list(access_castelnau_hangar)
	available_modifications = list(/decl/item_modifier/space_suit/mining)
	species = list(SPECIES_HUMAN,SPECIES_SKRELL,SPECIES_UNATHI)


/obj/machinery/suit_cycler/salvage/castelnau
	name = "Salvage suit cycler"
	model_text = "Salvage"
	req_access = list()
	available_modifications = list(/decl/item_modifier/space_suit/salvage)
	species = list(SPECIES_HUMAN,SPECIES_SKRELL,SPECIES_UNATHI)

/obj/machinery/suit_cycler/security/castelnau
	name = "Security suit cycler"
	model_text = "Security"
	req_access = list(access_castelnau_brig)
	available_modifications = list(/decl/item_modifier/space_suit/security, /decl/item_modifier/space_suit/security/alt)
	species = list(SPECIES_HUMAN,SPECIES_SKRELL,SPECIES_UNATHI)

/obj/machinery/suit_cycler/security/castelnau/alt
	available_modifications = list(/decl/item_modifier/space_suit/security/alt)

/obj/machinery/suit_cycler/medical/castelnau
	name = "Medical suit cycler"
	model_text = "Medical"
	req_access = list(access_castelnau_medical)
	available_modifications = list(/decl/item_modifier/space_suit/medical)
	species = list(SPECIES_HUMAN,SPECIES_SKRELL,SPECIES_UNATHI)

/obj/machinery/suit_cycler/medical/castelnau/alt
	available_modifications = list(/decl/item_modifier/space_suit/medical/alt)

/obj/machinery/suit_cycler/pilot/castelnau
	name = "Pilot suit cycler"
	model_text = "Pilot"
	req_access = list()
	available_modifications = list(/decl/item_modifier/space_suit/pilot)
	species = list(SPECIES_HUMAN,SPECIES_SKRELL,SPECIES_UNATHI)

/obj/machinery/suit_cycler/command/castelnau
	name = "Command suit cycler"
	model_text = "Command"
	req_access = list(access_castelnau_bridge)
	available_modifications = list(/decl/item_modifier/space_suit/command)
	species = list(SPECIES_HUMAN,SPECIES_SKRELL)

///
//ACCESS OVERRIDES
///

/obj/machinery/vending/boozeomat
	req_access = list(access_castelnau_bar)

/obj/machinery/vending/dinnerware
	req_access = list(access_castelnau_kitchen)

/obj/machinery/vending/engivend
	req_access = list(access_castelnau_engineering)

/obj/machinery/vending/engineering
	req_access = list(access_castelnau_engineering)

/obj/machinery/vending/robotics
	req_access = list(access_castelnau_englab)

/obj/machinery/vending/security
	req_access = list(access_castelnau_security)

/obj/machinery/vending/medical
	req_access = list(access_castelnau_medical)

/datum/nano_module/program/comm
	admin_access = list(access_castelnau_bridge)

/datum/computer_file/program/atmos_control
	required_access = access_castelnau_atmospherics

/datum/computer_file/program/power_monitor
	required_access = access_castelnau_engineering

/datum/computer_file/program/rcon_console
	required_access = access_castelnau_engineering

/datum/computer_file/program/shields_monitor
	required_access = access_castelnau_engineering

/datum/computer_file/program/supermatter_monitor
	required_access = access_castelnau_engineering

/datum/nano_module/deck_management
	default_access = access_castelnau_bridge

/datum/computer_file/program/docking
	required_access = access_castelnau_bridge

/datum/nano_module/supply
	admin_access = access_castelnau_cheapskate_cargo

/datum/computer_file/program/suit_sensors
	required_access = access_castelnau_medical

/datum/computer_file/program/digitalwarrant
	required_access = access_castelnau_security

/datum/computer_file/program/forceauthorization
	required_access = access_castelnau_sheriff

/obj/machinery/barrier
	req_access = list(access_castelnau_security)