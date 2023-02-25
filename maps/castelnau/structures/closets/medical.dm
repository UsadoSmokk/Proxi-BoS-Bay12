/*
 * castelnau Medical
 */
/decl/closet_appearance/secure_closet/castelnau/medical
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_BABY_BLUE,
		"medical" = COLOR_BABY_BLUE
	)

/decl/closet_appearance/secure_closet/castelnau/medical/physician
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_BABY_BLUE,
		"stripe_vertical_right_full" = COLOR_BABY_BLUE,
		"medical" = COLOR_BABY_BLUE
	)

/decl/closet_appearance/secure_closet/castelnau/medical/cmo
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_BABY_BLUE,
		"stripe_vertical_mid_full" = COLOR_CLOSET_GOLD,
		"stripe_vertical_right_full" = COLOR_BABY_BLUE,
		"medical" = COLOR_CLOSET_GOLD
	)

/obj/structure/closet/secure_closet/counselor
	closet_appearance = /decl/closet_appearance/secure_closet/castelnau/medical

/obj/structure/closet/secure_closet/CMO_castelnau
	name = "chief medical officer's locker"
	req_access = list(access_cmo)
	closet_appearance = /decl/closet_appearance/secure_closet/castelnau/medical/cmo

/obj/structure/closet/secure_closet/CMO_castelnau/WillContain()
	return list(
		/obj/item/clothing/suit/bio_suit/cmo,
		/obj/item/clothing/head/bio_hood/cmo,
		/obj/item/clothing/shoes/white,
		/obj/item/clothing/suit/storage/toggle/labcoat/cmo,
		/obj/item/clothing/suit/storage/toggle/labcoat/cmoalt,
		/obj/item/device/radio/headset/heads/cmo,
		/obj/item/device/radio/headset/heads/cmo/alt,
		/obj/item/device/flash,
		/obj/item/gun/energy/confuseray,
		/obj/item/device/megaphone,
		/obj/item/reagent_containers/hypospray/vial,
		/obj/item/storage/fancy/vials,
		/obj/item/device/scanner/health,
		/obj/item/clothing/accessory/stethoscope,
		/obj/item/device/flashlight/pen,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/clothing/suit/armor/pcarrier/medium/command,
		/obj/item/clothing/head/helmet,
		/obj/item/device/holowarrant,
		/obj/item/storage/firstaid/adv,
		/obj/item/storage/box/armband/med,
		/obj/item/storage/belt/general,
		/obj/item/material/knife/folding/swiss,
		/obj/item/sd_key,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/medic, /obj/item/storage/backpack/satchel/med)),
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/dufflebag/med, /obj/item/storage/backpack/messenger/med)),
		RANDOM_SCRUBS
	)
/obj/structure/closet/secure_closet/medical_viro
	name = "virologist's locker"
	req_access = list(access_virology)
	closet_appearance = /decl/closet_appearance/secure_closet/castelnau/medical/physician

/obj/structure/closet/secure_closet/medical_viro/WillContain()
	return list(
		/obj/item/clothing/under/sterile,
		/obj/item/clothing/suit/storage/toggle/labcoat/virologist,
		/obj/item/clothing/shoes/white,
		/obj/item/device/radio/headset/headset_med,
		/obj/item/device/radio/headset/headset_med/alt,
		/obj/item/taperoll/medical,
		/obj/item/storage/belt/medical,
		/obj/item/clothing/mask/surgical,
		/obj/item/device/scanner/health,
		/obj/item/clothing/accessory/stethoscope,
		/obj/item/device/flashlight/pen,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/storage/firstaid/adv,
		/obj/item/material/knife/folding/swiss,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/medic, /obj/item/storage/backpack/satchel/med)),
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/dufflebag/med, /obj/item/storage/backpack/messenger/med)),
		RANDOM_SCRUBS = 2
	)

/obj/structure/closet/secure_closet/medical_castelnausenior
	name = "surgeon's locker"
	req_access = list(access_castelnau_medical)
	closet_appearance = /decl/closet_appearance/secure_closet/castelnau/medical/physician

/obj/structure/closet/secure_closet/medical_castelnausenior/WillContain()
	return list(
		/obj/item/clothing/under/sterile,
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/suit/surgicalapron,
		/obj/item/clothing/shoes/white,
		/obj/item/device/radio/headset/headset_med,
		/obj/item/device/radio/headset/headset_med/alt,
		/obj/item/taperoll/medical,
		/obj/item/storage/belt/medical,
		/obj/item/clothing/mask/surgical,
		/obj/item/device/scanner/health,
		/obj/item/clothing/accessory/stethoscope,
		/obj/item/device/flashlight/pen,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/storage/firstaid/adv,
		/obj/item/material/knife/folding/swiss,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/medic, /obj/item/storage/backpack/satchel/med)),
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/dufflebag/med, /obj/item/storage/backpack/messenger/med)),
		RANDOM_SCRUBS = 2
	)

/obj/structure/closet/secure_closet/medical_castelnau
	name = "doctor's locker"
	req_access = list(access_castelnau_medical)
	closet_appearance = /decl/closet_appearance/secure_closet/castelnau/medical

/obj/structure/closet/secure_closet/medical_castelnau/WillContain()
	return list(
		/obj/item/clothing/under/sterile,
		/obj/item/clothing/accessory/storage/white_vest,
		/obj/item/clothing/suit/storage/toggle/fr_jacket,
		/obj/item/clothing/shoes/white,
		/obj/item/device/radio/headset/headset_med,
		/obj/item/device/radio/headset/headset_med/alt,
		/obj/item/taperoll/medical,
		/obj/item/storage/belt/medical,
		/obj/item/clothing/mask/gas/half,
		/obj/item/tank/oxygen_emergency_extended,
		/obj/item/storage/box/autoinjectors,
		/obj/item/device/scanner/health,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/storage/firstaid/adv,
		/obj/item/clothing/suit/storage/medical_chest_rig,
		/obj/item/clothing/head/hardhat/EMS,
		/obj/item/material/knife/folding/swiss,
		/obj/item/roller,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/medic, /obj/item/storage/backpack/satchel/med)),
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/dufflebag/med, /obj/item/storage/backpack/messenger/med))
	)

/obj/structure/closet/wardrobe/medic_castelnau
	name = "medical wardrobe"
	closet_appearance = /decl/closet_appearance/wardrobe/white

/obj/structure/closet/wardrobe/medic_castelnau/WillContain()
	return list(
		/obj/item/clothing/under/sterile = 2,
		RANDOM_SCRUBS = 4,
		/obj/item/clothing/suit/surgicalapron = 2,
		/obj/item/clothing/shoes/white = 2,
		/obj/item/clothing/mask/surgical = 2
	)
