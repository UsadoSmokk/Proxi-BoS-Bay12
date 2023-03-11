/decl/closet_appearance/secure_closet/castelnau/command
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_CLOSET_GOLD
	)

/obj/structure/closet/secure_closet/castelnau_adjutant
	name = "bridge assistant's locker"
	req_access = list(access_castelnau_bridge)
	closet_appearance = /decl/closet_appearance/secure_closet/castelnau/command

/obj/structure/closet/secure_closet/castelnau_adjutant/WillContain()
	return list(
		/obj/item/device/radio,
		/obj/item/pen,
		/obj/item/device/tape/random,
		/obj/item/device/taperecorder,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/material/clipboard,
		/obj/item/folder/blue,
		/obj/item/modular_computer/tablet/lease/preset/command,
		/obj/item/storage/belt/general,
		/obj/item/material/knife/folding/swiss,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack, /obj/item/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/dufflebag, /obj/item/storage/backpack/messenger)),
		new /datum/atom_creator/weighted(list(/obj/item/device/flashlight, /obj/item/device/flashlight/flare, /obj/item/device/flashlight/flare/glowstick/random))
	)