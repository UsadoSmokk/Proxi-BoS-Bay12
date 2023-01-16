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