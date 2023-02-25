/obj/item/clothing/suit/storage/toggle/lordan
	name = "lordan jacket parent object"
	desc = "You should never see this."
	icon = 'maps/torch/bos/icons/obj/obj_suit_lordania.dmi'
	item_icons = list(slot_wear_suit_str = 'maps/torch/bos/icons/mob/onmob_suit_lordania.dmi')
	allowed = list(/obj/item/tank/oxygen_emergency,/obj/item/device/flashlight,/obj/item/pen,/obj/item/clothing/head/soft,/obj/item/clothing/head/beret,/obj/item/storage/fancy/cigarettes,/obj/item/flame/lighter,/obj/item/device/taperecorder,/obj/item/device/scanner/gas,/obj/item/device/radio,/obj/item/taperoll, /obj/item/gun)
	valid_accessory_slots = list(ACCESSORY_SLOT_ARMBAND,ACCESSORY_SLOT_MEDAL,ACCESSORY_SLOT_INSIGNIA,ACCESSORY_SLOT_RANK,ACCESSORY_SLOT_DEPT)
	restricted_accessory_slots = list(ACCESSORY_SLOT_ARMBAND)


//Service

/obj/item/clothing/suit/storage/toggle/lordan/service
	name = "service jacket"
	desc = "A uniform service jacket, plain and undecorated."
	icon_state = "greenservice"
	body_parts_covered = UPPER_TORSO|ARMS
	siemens_coefficient = 0.9
	allowed = list (/obj/item/gun, /obj/item/pen,/obj/item/clothing/head/soft,/obj/item/clothing/head/beret,/obj/item/storage/fancy/cigarettes,/obj/item/flame/lighter,/obj/item/device/taperecorder,/obj/item/device/scanner/gas,/obj/item/device/radio,/obj/item/taperoll,/obj/item/device/scanner/gas, /obj/item/device/flashlight, /obj/item/device/multitool, /obj/item/device/paint_sprayer, /obj/item/device/radio, /obj/item/device/t_scanner, \
	/obj/item/crowbar, /obj/item/screwdriver, /obj/item/weldingtool, /obj/item/wirecutters, /obj/item/wrench, /obj/item/tank/oxygen_emergency, \
	/obj/item/clothing/mask/gas, /obj/item/taperoll/engineering,/obj/item/clothing/head/hardhat)

/obj/item/clothing/suit/storage/toggle/lordan/service/marine
	name = "marine coat"
	desc = "An LSS Marine service coat. Green and undecorated."
	icon_state = "greenservice"
//	item_state = "greenservice"
//	icon_closed = "greenservice"
//	icon_open = "greenservice_open"

/obj/item/clothing/suit/storage/toggle/lordan/service/engineer
	name = "engineer marine coat"
	desc = "An LSS Marine service coat with red accents."
	icon_state = "greenservice_eng"
//	item_state = "greenservice_eng"
//	icon_closed = "greenservice_eng"
//	icon_open = "greenservice_eng_open"

/obj/item/clothing/suit/storage/toggle/lordan/service/medical
	name = "medical marine coat"
	desc = "An LSS Marine service coat with blue accents."
	icon_state = "greenservice_med"
//	item_state = "greenservice_med"
//	icon_closed = "greenservice_med"
//	icon_open = "greenservice_med_open"

/obj/item/clothing/suit/storage/toggle/lordan/service/command
	name = "command marine coat"
	desc = "An LSS Marine service coat with yellow accents."
	icon_state = "greenservice_com"
//	item_state = "greenservice_com"
//	icon_closed = "greenservice_com"
//	icon_open = "greenservice_com_open"

/obj/item/clothing/suit/storage/toggle/lordan/service/fleet
	name = "fleet service jacket"
	desc = "A navy LSS Fleet service jacket."
	icon_state = "navyservice"
//	item_state = "navyservice"
//	icon_closed = "navyservice"
//	icon_open = "navyservice_open"

/obj/item/clothing/suit/storage/toggle/lordan/service/fleet/snco
	name = "fleet senior service jacket"
	desc = "A navy blue LSS Fleet service jacket with silver cuffs."
	icon_state = "navyservice_snco"
//	item_state = "navyservice_snco"
//	icon_closed = "navyservice_snco"
//	icon_open = "navyservice_snco_open"

/obj/item/clothing/suit/storage/toggle/lordan/service/fleet/officer
	name = "fleet officer's service jacket"
	desc = "A navy LSS Fleet service jacket with gold accents."
	icon_state = "navyservice_comm"
//	item_state = "navyservice_comm"
//	icon_closed = "navyservice_comm"
//	icon_open = "navyservice_comm_open"

/obj/item/clothing/suit/storage/toggle/lordan/service/fleet/captain
	name = "fleet senior officer's service jacket"
	desc = "A navy LSS Fleet service jacket with red accents."
	icon_state = "navyservice_cap"
//	item_state = "navyservice_cap"
//	icon_closed = "navyservice_cap"
//	icon_open = "navyservice_cap_open"

/obj/item/clothing/suit/storage/toggle/lordan/service/fleet/po
	name = "political officer service jacket"
	desc = "A navy LSS Fleet service jacket with red accents."
	icon = 'maps/torch/bos/icons/obj/obj_suit_lordania.dmi'
	item_icons = list(slot_wear_suit_str = 'maps/torch/bos/icons/mob/onmob_suit_lordania.dmi')
	icon_state = "navyservice_po"
//	item_state = "navyservice_po"

//Dress - don't murder me with a gun

/obj/item/clothing/suit/storage/toggle/lordan/dress
	name = "dress jacket"
	desc = "A uniform dress jacket. Decorated with red accents."
	icon_state = "blackdress"
	body_parts_covered = UPPER_TORSO|ARMS
	siemens_coefficient = 0.9
	allowed = list(/obj/item/tank/oxygen_emergency,/obj/item/device/flashlight,/obj/item/pen,/obj/item/clothing/head/soft,/obj/item/clothing/head/beret,/obj/item/storage/fancy/cigarettes,/obj/item/flame/lighter,/obj/item/device/taperecorder,/obj/item/device/scanner/gas,/obj/item/device/radio,/obj/item/taperoll, /obj/item/gun)
	valid_accessory_slots = list(ACCESSORY_SLOT_MEDAL,ACCESSORY_SLOT_RANK, ACCESSORY_SLOT_INSIGNIA)
	restricted_accessory_slots = list(ACCESSORY_SLOT_ARMBAND)


/obj/item/clothing/suit/storage/toggle/lordan/dress/marine
	name = "marine dress jacket"
	desc = "A black dress jacket belonging to the LSS Marine Corps. Fashionable, for the 24th century at least."
	icon_state = "blackdress"
//	icon_closed = "blackdress"
//	icon_open = "blackdress_open"

/obj/item/clothing/suit/storage/toggle/lordan/dress/command
	name = "command dress jacket"
	desc = "A black dress jacket belonging to the LSS Marine Corps. These one has a command stripes."
	icon_state = "blackdress_com"
//	icon_closed = "blackdress_com"
//	icon_open = "blackdress_com_open"

/obj/item/clothing/suit/storage/toggle/lordan/dress/general
	name = "general dress jacket"
	desc = "A black dress jacket belonging to the LSS Marine Corps. These one has a general stripes. Very impressive."
	icon_state = "blackdress_gen"
//	icon_closed = "blackdress_gen"
//	icon_open = "blackdress_gen_open"

/obj/item/clothing/suit/storage/lordan/dress/fleet
	name = "fleet dress jacket"
	desc = "A black dress jacket belonging to the LSS Fleet. Fashionable, for the 24th century at least."
	icon = 'maps/torch/bos/icons/obj/obj_suit_lordania.dmi'
	item_icons = list(slot_wear_suit_str = 'maps/torch/bos/icons/mob/onmob_suit_lordania.dmi')
	icon_state = "fldress"
//	item_state = "fldress"
	body_parts_covered = UPPER_TORSO|ARMS
	siemens_coefficient = 0.9
	allowed = list(/obj/item/tank/oxygen_emergency,/obj/item/device/flashlight,/obj/item/pen,/obj/item/clothing/head/soft,/obj/item/clothing/head/beret,/obj/item/storage/fancy/cigarettes,/obj/item/flame/lighter,/obj/item/device/taperecorder,/obj/item/device/scanner/gas,/obj/item/device/radio,/obj/item/taperoll, /obj/item/gun)
	valid_accessory_slots = list(ACCESSORY_SLOT_MEDAL,ACCESSORY_SLOT_RANK, ACCESSORY_SLOT_INSIGNIA)
	restricted_accessory_slots = list(ACCESSORY_SLOT_ARMBAND)

/obj/item/clothing/suit/storage/lordan/dress/fleet/snco
	name = "fleet senior dress jacket"
	desc = "A black dress jacket belonging to the LSS Fleet. Fashionable, for the 24th century at least."
	icon_state = "fldress_snco"
//	item_state = "fldress_snco"

/obj/item/clothing/suit/storage/lordan/dress/fleet/officer
	name = "fleet officer dress jacket"
	desc = "A black dress coat belonging to the LSS Fleet. Fashionable, for the 24th century at least."
	icon_state = "fldress_com"
//	item_state = "fldress_com"