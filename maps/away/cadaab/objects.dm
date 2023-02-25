/obj/structure/flora/tree/cadaab
	name = "tree"
	icon = 'maps/castelnau/locations/cadaab/icons/objects_48x48.dmi'
	icon_state = "tree"
	pixel_x = 0

/obj/structure/cadaab
	name = "stone"
	desc = "You will surely burn your hand if you touch it."
	icon = 'maps/castelnau/locations/cadaab/icons/objects.dmi'
	icon_state = "stone0"
	anchored = TRUE
	density = TRUE
	layer = ABOVE_HUMAN_LAYER

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

/obj/structure/closet/tent
	name = "tent"
	desc = "A pretty big green tent."
	icon = 'maps/away/cadaab/icons/tent.dmi'
	open_sound = 'sound/effects/footstep/carpet5.ogg'
	close_sound = 'sound/effects/footstep/carpet5.ogg'
	setup = 0
	closet_appearance = null