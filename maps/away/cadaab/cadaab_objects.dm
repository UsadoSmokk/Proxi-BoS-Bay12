/obj/structure/flora/tree/cadaab
	name = "tree"
	icon = 'maps/away/cadaab/icons/objects_48x48.dmi'
	icon_state = "tree"
	pixel_x = 0
	health_max = 50

/obj/structure/cadaab
	name = "stone"
	desc = "You will surely burn your hand if you touch it."
	icon = 'maps/away/cadaab/icons/objects.dmi'
	icon_state = "stone0"
	anchored = TRUE
	density = TRUE
	layer = ABOVE_HUMAN_LAYER
	health_max = 40

/obj/structure/cadaab/Initialize()
	. = ..()
	icon_state = "stone[rand(0,6)]"

/obj/structure/gravemarker/cadaab
	name = "grave stone"
	icon = 'maps/away/cadaab/icons/objects.dmi'
	icon_state = "gravestone"
	pixel_x = 0
	pixel_y = 0

/obj/structure/gravemarker/cadaab/alt
	icon_state = "gravestone2"

/obj/structure/pit/closed/cadaab
	name = "grave"
	icon = 'maps/away/cadaab/icons/objects.dmi'
	icon_state = "grave"

/obj/structure/steelfence
	name = "steel fence"
	desc = "A flimsy lattice of metal rods, with screws to secure it to the floor."
	icon = 'maps/away/cadaab/icons/objects.dmi'
	icon_state = "steelfence"
	anchored = TRUE
	density = TRUE
	health_max = 30

/obj/structure/steelfence/attackby(obj/item/W as obj, mob/user as mob)
	if(isWirecutter(W))
		playsound(loc, 'sound/items/Wirecutter.ogg', 100, 1)
		new /obj/item/stack/material/rods(get_turf(src))
		qdel(src)
	return

/obj/machinery/door/unpowered/simple/cadaab
	name = "steel fence door"
	icon = 'maps/away/cadaab/icons/objects.dmi'
	icon_state = "fencedoor"
	icon_base = "fencedoor"
	health_max = 30

/obj/structure/closet/tent
	name = "tent"
	desc = "A pretty big green tent."
	icon = 'maps/away/cadaab/icons/tent.dmi'
	open_sound = 'sound/effects/footstep/carpet5.ogg'
	close_sound = 'sound/effects/footstep/carpet5.ogg'
	setup = 0
	closet_appearance = null
	health_max = 10

/obj/structure/reagent_dispensers/fueltank/cadaab
	name = "gas station"
	desc = "There's probably still fuel left in it."
	icon = 'maps/away/cadaab/icons/objects.dmi'
	icon_state = "fuel"
	anchored = 1

/obj/machinery/vending/syndipass
	name = "\improper Exclusive for Syndi-Pass Owners"
	desc = "Vending machine with products exclusively for syndi-pass owners."
	product_slogans = "Fuck Nanotra-.. Oh, wait.'.;\
		Only the best for the best."
	vend_delay = 21
	icon = 'maps/away/cadaab/icons/objects.dmi'
	icon_state = "syndi"
	icon_vend = "syndi-vend"
	icon_deny = "syndi-deny"
	base_type = /obj/machinery/vending/syndipass
	req_access = list(access_castelnau_syndipass)
	products = list(
					/obj/item/storage/mre = 2,
					/obj/item/clothing/accessory/armor_plate/ceramic = 3,
					/obj/item/gun/energy/ionrifle/small = 1,
					/obj/item/gun/projectile/revolver/psirevolver = 2,
					/obj/item/ammo_magazine/speedloader/magnum/nullglass = 3,
					/obj/item/storage/toolbox/syndicate = 2,
					/obj/item/rcd = 2,
					/obj/item/rcd_ammo = 5,
					/obj/item/bodybag/cryobag = 2,
					/obj/item/storage/firstaid/light = 1,
					/obj/item/storage/firstaid/regular = 1,
					/obj/item/storage/firstaid/trauma = 1,
					/obj/item/storage/firstaid/fire = 1,
					/obj/item/storage/firstaid/toxin = 1,
					/obj/item/storage/firstaid/stab = 1,
					/obj/item/storage/firstaid/adv = 1,
					/obj/item/device/radio/intercept = 1,
					/obj/item/card/id/syndicate = 3,
					/obj/item/stack/telecrystal = 20)
	premium = list(/obj/item/storage/firstaid/combat = 1, /obj/item/gun/energy/plasmarifle = 1)

	prices = list(
					/obj/item/storage/mre = 300,
					/obj/item/clothing/accessory/armor_plate/ceramic = 1500,
					/obj/item/gun/energy/ionrifle/small = 2500,
					/obj/item/gun/projectile/revolver/psirevolver = 2000,
					/obj/item/ammo_magazine/speedloader/magnum/nullglass = 500,
					/obj/item/storage/toolbox/syndicate = 800,
					/obj/item/rcd = 1000,
					/obj/item/rcd_ammo = 300,
					/obj/item/bodybag/cryobag = 500,
					/obj/item/storage/firstaid/light = 200,
					/obj/item/storage/firstaid/regular = 500,
					/obj/item/storage/firstaid/trauma = 500,
					/obj/item/storage/firstaid/fire = 500,
					/obj/item/storage/firstaid/toxin = 500,
					/obj/item/storage/firstaid/stab = 800,
					/obj/item/storage/firstaid/adv = 1000,
					/obj/item/device/radio/intercept = 1000,
					/obj/item/card/id/syndicate = 3000,
					/obj/item/stack/telecrystal = 500,
					/obj/item/storage/firstaid/combat = 4000,
					/obj/item/gun/energy/plasmarifle = 5000)