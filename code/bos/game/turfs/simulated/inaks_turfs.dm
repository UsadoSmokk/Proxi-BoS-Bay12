/turf/simulated/inaks/asphalt
	name = "asphalt"
	icon = 'icons/bos/turf/inaks_turfs.dmi'
	icon_state = "asphalt"
	footstep_type = /decl/footsteps/asphalt

/turf/simulated/inaks/plate
	name = "plate"
	icon = 'icons/bos/turf/inaks_turfs.dmi'
	icon_state = "plate"
	footstep_type = /decl/footsteps/concrete

/turf/simulated/inaks/cubic_plate
	name = "cubic plate"
	icon = 'icons/bos/turf/inaks_turfs.dmi'
	icon_state = "cubic_plate"
	footstep_type = /decl/footsteps/concrete

/turf/simulated/inaks/dark_cafel
	name = "dark cafel"
	icon = 'icons/bos/turf/inaks_turfs.dmi'
	icon_state = "dark_cafel"

//WHY THERE ARE TWO DIFFERENT KINDS OF TURFS HERE WHAT THE ACTUAL FUCJ

/turf/simulated/floor/inaks

/turf/simulated/floor/inaks/Initialize() //for cadaab
	.=..()
	set_light(1, 1, 5, l_color = "#ff8c66")

/turf/simulated/floor/inaks/asphalt
	name = "asphalt"
	icon = 'icons/bos/turf/inaks_turfs.dmi'
	icon_state = "asphalt"
	footstep_type = /decl/footsteps/asphalt

/turf/simulated/floor/inaks/plate
	name = "plate"
	icon = 'icons/bos/turf/inaks_turfs.dmi'
	icon_state = "plate"
	footstep_type = /decl/footsteps/concrete

/turf/simulated/floor/inaks/cubic_plate
	name = "cubic plate"
	icon = 'icons/bos/turf/inaks_turfs.dmi'
	icon_state = "cubic_plate"
	footstep_type = /decl/footsteps/concrete

/turf/simulated/floor/inaks/dark_cafel
	name = "dark cafel"
	icon = 'icons/bos/turf/inaks_turfs.dmi'
	icon_state = "dark_cafel"
