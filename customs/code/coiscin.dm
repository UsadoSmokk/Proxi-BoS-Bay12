/obj/item/clothing/accessory/haori
	name = "old haori"
	desc = "An old haori with an unknown symbol on its back."
	icon = 'customs/icons/obj/custom_items_obj.dmi'
	icon_state = "voxcoat"
	item_state = "voxcoat"
	slot = ACCESSORY_SLOT_ARMBAND
	accessory_icons = list(slot_w_uniform_str = 'customs/icons/mob/custom_items_mob.dmi', slot_wear_suit_str = 'customs/icons/mob/custom_items_mob.dmi')

/obj/item/clothing/accessory/coiscin
	name = "katana and a tanto"
	desc = "A cracked katana and a tanto with glyphs of the Vox language, as a symbol of the once greatness of the Vox Empire."
	icon = 'customs/icons/obj/custom_items_obj.dmi'
	icon_state = "katana"
	item_state = "katana"
	force = 10
	slot = ACCESSORY_SLOT_ARMBAND
	accessory_icons = list(slot_w_uniform_str = 'customs/icons/mob/custom_items_mob.dmi', slot_wear_suit_str = 'customs/icons/mob/custom_items_mob.dmi')
	item_icons = list(
		slot_l_hand_str = 'customs/icons/mob/custom_items_lhand.dmi',
		slot_r_hand_str = 'customs/icons/mob/custom_items_rhand.dmi',
		)

/obj/item/clothing/under/coiscin
	name = "kimono"
	desc = "An old and already well-worn kimono, but the quality of the fabric is still amazing, and tactile sensations give a pleasant feeling to the owner of this thing. An incomprehensible symbol is visible on the back."
	icon_state = "kimono"
	worn_state = "kimono"
	icon = 'customs/icons/obj/custom_items_obj.dmi'
	item_icons = list(slot_w_uniform_str = 'customs/icons/mob/custom_items_mob.dmi')
	species_restricted = list(SPECIES_VOX)
	sprite_sheets = list(
		SPECIES_VOX = 'customs/icons/mob/custom_items_mob.dmi')
