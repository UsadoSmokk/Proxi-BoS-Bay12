#define CONTR_MIN 70
#define CONTR_MAX 120

/datum/round_aspect/contraband
	name = "Контрабанда"
	chance = 15
	weight = ASPECT_WEIGHT_CONTRABAND
	announce_text = "<span class=\"warning\">Недавно была получена информация о большом схроне контрабанды на Антарес - но на месте ничего не нашли. Вероятно контрабандитсы всё уже перепрятали, но делали они это, наверняка, в спешке...</span>"

/datum/round_aspect/contraband/get_desc_msg()
	return SPAN_WARNING("Тоннели стали более интересными...")

/datum/round_aspect/contraband/do_preload_thing()
	. = ..()
	var/area/maintarea = /area/maintenance
	var/turf/T
	var/list/turf/avalible_turfs = get_subarea_turfs(maintarea, list(/proc/is_turf_no_mines_and_walls))
	for(var/j in 1 to rand(CONTR_MIN, CONTR_MAX))
		T = pick(avalible_turfs)
		new /obj/random/contraband (T)
		if(prob(20))
			new /obj/random/lilgun (T)

#undef CONTR_MIN
#undef CONTR_MAX
