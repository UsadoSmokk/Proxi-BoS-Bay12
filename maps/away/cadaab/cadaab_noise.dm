/turf/unsimulated/wall/cadaab
	name = "distant noise"
	desc = "In these days, electrical noise follows people everywhere. Not always intelligible, but always unstoppable. It is like radio interference. It seems to intensify as it approaches the boundary of known space. Sometimes you can make out words in the noise. A strange whisper that makes no sense."
	icon = 'maps/away/cadaab/icons/turfs.dmi'
	icon_state = "noise1"
	density = TRUE
	layer = ABOVE_HUMAN_LAYER
	opacity = 1
	blocks_air = 1

/turf/simulated/wall/cadaab/Initialize()
	.=..()
	icon_state = "noise[rand(1,3)]"


/obj/machinery/noisetv //wip
	name = "transmission center"
	desc = "A device assembled from parts found on Cadaab, waiting to receive a transmission."
	icon = 'maps/away/cadaab/icons/objects.dmi'
	icon_state = "tvnoise"
	anchored = TRUE
	density = TRUE
	var/on = FALSE
	construct_state = /decl/machine_construction/default/panel_closed

/obj/machinery/noisetv/on_update_icon()
	if(on)
		icon_state = "[initial(icon_state)]-on"
	else
		icon_state = "[initial(icon_state)]"

/obj/machinery/noisetv/proc/endnoise()
	if(on)
		audible_message(SPAN_WARNING("[src] makes a terrible noise! You don't think it will go away until the broadcast is over."))
		playsound(src, 'sound/music/bos/redsucker.ogg', 100, 1)
		update_icon()
	else
		audible_message(SPAN_WARNING("Everything went quiet."))
		sound_to(usr, sound(null))
		update_icon()

/obj/machinery/noisetv/bigger
	icon_state = "tvnoise2"

/obj/machinery/noisetv/old
	name = "old TV"
	desc = "An old TV. You doubt that it still works."
	icon_state = "tvnoise3"