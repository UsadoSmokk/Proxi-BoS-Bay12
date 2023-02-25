/datum/gear/suit/lab_xyn_machine
	allowed_branches = CASUAL_BRANCHES

/datum/gear/gloves/dress/modified
	display_name = "modified gloves, dress"
	path = /obj/item/clothing/gloves/color/white/modified
	sort_category = "Xenowear"
	whitelisted = list(SPECIES_UNATHI)

/datum/gear/gloves/duty/modified
	display_name = "modified gloves, duty"
	path = /obj/item/clothing/gloves/thick/duty/modified
	sort_category = "Xenowear"
	whitelisted = list(SPECIES_UNATHI)

/datum/gear/suit/unathi/savage_hunter

/datum/gear/head/skrell_helmet
	allowed_roles = ARMORED_ROLES
//	allowed_branches = TACTICOOL_BRANCHES
	whitelisted = list(SPECIES_SKRELL)

/datum/gear/uniform/harness
	allowed_branches = null

// Patches

/datum/gear/accessory/nabber_gloves
	display_name = "GAS Insuls"
	path = /obj/item/clothing/gloves/nabber
	description = "A set of insulated gloves meant for GAS."
	whitelisted = list(SPECIES_NABBER)
	allowed_roles = ENGINEERING_ROLES
	sort_category = "Xenowear"

/datum/gear/skrell_bodysuit
	display_name = "skrell jumpsuit"
	path = /obj/item/clothing/under/skrelljumpsuit
	sort_category = "Xenowear"
	whitelisted = list(SPECIES_SKRELL)
	cost = 1
