/*
 * scientist but the engineer one
 */
/decl/closet_appearance/secure_closet/castelnau/science
	extra_decals = list(
		"stripe_vertical_left_full" =  COLOR_PURPLE_GRAY,
		"stripe_vertical_right_full" = COLOR_PURPLE_GRAY,
		"research" = COLOR_PURPLE_GRAY
	)

/obj/structure/closet/secure_closet/scientist_castelnau
	name = "reverse engineer's locker"
//	req_access = list(access_research)
	closet_appearance = /decl/closet_appearance/secure_closet/expedition/science

/obj/structure/closet/secure_closet/scientist_castelnau/WillContain()
	return list(
		/obj/item/clothing/under/rank/medical/scrubs,
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/shoes/white,
		/obj/item/device/radio/headset/headset_eng,
		/obj/item/device/radio/headset/headset_eng/alt,
		/obj/item/clothing/mask/gas/half,
		/obj/item/tank/oxygen_emergency_extended,
		/obj/item/material/clipboard,
		/obj/item/folder,
		/obj/item/device/taperecorder,
		/obj/item/device/tape/random = 3,
		/obj/item/device/camera,
		/obj/item/device/scanner/gas,
		/obj/item/taperoll/research,
		/obj/item/clothing/gloves/latex,
		/obj/item/clothing/glasses/science,
		/obj/item/storage/belt/general,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/toxins, /obj/item/storage/backpack/satchel/tox)),
		new /datum/atom_creator/simple(/obj/item/storage/backpack/messenger/tox, 50)
	)