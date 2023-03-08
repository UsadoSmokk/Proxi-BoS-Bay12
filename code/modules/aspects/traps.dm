#define MINES_MIN 50
#define MINES_MAX 100

/datum/round_aspect/traps
	name = "Минное поле"
	chance = 25
	weight = ASPECT_WEIGHT_TRAPS
	announce_text = "<span class=\"info\">Ночью чёртовы пираты расставили вокруг и внутри аванпоста около сотни мин. Смотрите под ноги на Кадаабе!</span>"

/datum/round_aspect/traps/get_desc_msg()
	return SPAN_WARNING("Пустыня стааи более опаснымой...")

/datum/round_aspect/traps/do_preload_thing()
	. = ..()
	var/area/cadaab = /area/cadaab
	var/turf/T
	var/list/turf/avalible_turfs = get_subarea_turfs(cadaab, list(/proc/is_turf_no_mines_and_walls))
	for(var/j in 1 to rand(MINES_MIN, MINES_MAX))
		T = pick(avalible_turfs)
		var/obj/item/mine/mine = new(T)
		if(prob(60))
			mine.activate()

#undef MINES_MIN
#undef MINES_MAX
