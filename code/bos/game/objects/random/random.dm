/obj/random/lootable_mgsbox
	name = "random mgsbox"
	desc = "This is a random mgsbox."
	icon = 'icons/bos/obj/box.dmi'
	icon_state = "box"
	spawn_nothing_percentage = 10

/obj/random/lootable_mgsbox/spawn_choices()
	return list(/obj/item/storage/mgsbox/med/loot_medicaments,
				/obj/item/storage/mgsbox/loot_material,
				/obj/item/storage/mgsbox/loot_engineering,
				/obj/item/storage/mgsbox/loot_accesory,
				/obj/item/storage/mgsbox/loot_meal)

/obj/random/asphalt_crack
	name = "random crack"
	desc = "This is a random crack."
	icon = 'icons/bos/turf/inaks_decals.dmi'
	icon_state = "crack_1"
	spawn_nothing_percentage = 5

/obj/random/asphalt_crack/spawn_choices()
	return list(/obj/effect/floor_decal/inaks/asphalt_crack_1,
				/obj/effect/floor_decal/inaks/asphalt_crack_2,
				/obj/effect/floor_decal/inaks/asphalt_crack_3,
				/obj/effect/floor_decal/inaks/asphalt_crack_4,
				/obj/effect/floor_decal/inaks/asphalt_crack_5,
				/obj/effect/floor_decal/inaks/asphalt_crack_6,
				/obj/effect/floor_decal/inaks/asphalt_crack_7,
				/obj/effect/floor_decal/inaks/asphalt_crack_8,
				/obj/effect/floor_decal/inaks/asphalt_crack_9,
				/obj/effect/floor_decal/inaks/asphalt_crack_10,
				/obj/effect/floor_decal/inaks/asphalt_crack_11,
				/obj/effect/floor_decal/inaks/asphalt_crack_12,
				/obj/effect/floor_decal/inaks/asphalt_crack_13,
				/obj/effect/floor_decal/inaks/asphalt_crack_14,
				/obj/effect/floor_decal/inaks/asphalt_crack_15,
				/obj/effect/floor_decal/inaks/asphalt_crack_16,
				/obj/effect/floor_decal/inaks/asphalt_crack_17,
				/obj/effect/floor_decal/inaks/asphalt_crack_18,
				/obj/effect/floor_decal/inaks/asphalt_crack_19,
				/obj/effect/floor_decal/inaks/asphalt_crack_20,
				/obj/effect/floor_decal/inaks/asphalt_crack_21,
				/obj/effect/floor_decal/inaks/asphalt_crack_22,
				/obj/effect/floor_decal/inaks/asphalt_crack_23,
				/obj/effect/floor_decal/inaks/asphalt_crack_24)
