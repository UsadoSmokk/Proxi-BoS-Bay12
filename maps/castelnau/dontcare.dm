/datum/job/submap
	branch = /datum/mil_branch/other
	rank =   /datum/mil_rank/civ/civ

/datum/map/castelnau
	branch_types = list(
		/datum/mil_branch/regulator,
		/datum/mil_branch/science_personnel
	)

	spawn_branch_types = list(
		/datum/mil_branch/ship_personnel,
		/datum/mil_branch/science_personnel
	)

/*
 *  ==Branches==
 *  ============
 */

/datum/mil_branch/regulator
	name = "Regulator"
	name_short = "Reg"
	email_domain = "reg.net"

	rank_types = list(
		/datum/mil_rank/reg,
		/datum/mil_rank/reg/com
	)

	spawn_rank_types = list(
		/datum/mil_rank/reg,
		/datum/mil_rank/reg/com
	)

/datum/mil_branch/military
	name = "Military"
	name_short = "Mil"
	email_domain = "mil.gov"

	rank_types = list(
		/datum/mil_rank/mil,
		/datum/mil_rank/mil/scg,
		/datum/mil_rank/mil/lss,
		/datum/mil_rank/mil/iccg,
		/datum/mil_rank/mil/mir
	)

	spawn_rank_types = list(
		/datum/mil_rank/mil,
		/datum/mil_rank/mil/scg,
		/datum/mil_rank/mil/lss,
		/datum/mil_rank/mil/iccg,
		/datum/mil_rank/mil/mir
	)

/datum/mil_branch/paroled
	name = "Paroled"
	name_short = "Par"
	email_domain = "freemail.net"

	rank_types = list(
		/datum/mil_rank/par
	)

	spawn_rank_types = list(
		/datum/mil_rank/par
	)

/datum/mil_branch/cult
	name = "Blood Cult of Nar'Sie"
	name_short = "Cult"
	email_domain = "freemail.net"

	rank_types = list(
		/datum/mil_rank/cult,
		/datum/mil_rank/reg/com
	)

	spawn_rank_types = list(
		/datum/mil_rank/reg,
		/datum/mil_rank/reg/com
	)

/datum/mil_branch/other
	name = "Other"
	name_short = "Other"
	email_domain = "freemail.net"

	rank_types = list(
		/datum/mil_rank/cult,
		/datum/mil_rank/reg/com
	)

	spawn_rank_types = list(
		/datum/mil_rank/reg,
		/datum/mil_rank/reg/com
	)

/*
 *  ==Ranks==
 *  =========
 */


/datum/mil_rank/grade()
	. = ..()
	if(!sort_order)
		return ""
	if(sort_order <= 10)
		return "E[sort_order]"
	return "O[sort_order - 10]"


/*
 *  Regulators
 *  =========
 */

/datum/mil_rank/reg
	name = "Regulator"

/datum/mil_rank/reg/com
	name = "Regulator Command"

/*
 *  Military
 *  =========
 */

/datum/mil_rank/mil
	name = "Military"
	name_short = "Mil"

/datum/mil_rank/mil/scg
	name = "SCG Military"
	name_short = "SCG"

/datum/mil_rank/mil/lss
	name = "LSS Military"
	name_short = "LSS"

/datum/mil_rank/mil/iccg
	name = "ICCG Military"
	name_short = "ICCG"

/datum/mil_rank/mil/mir
	name = "Mirania Military"
	name_short = "MIR"

/*
 *  Zeki
 *  =========
 */

/datum/mil_rank/par
	name = "Paroled"

/*
 *  Cultists
 *  =========
 */

/datum/mil_rank/cult
	name = "Nar'Sie Acolyte"
	name_short = "Acolyte"

/datum/mil_rank/cult/ich
	name = "Nar'Sie Ichorn"
	name_short = "Ichorn"

/*
 *  Other
 *  =========
 */

/datum/mil_rank/other
	name = "Civilian"
	name_short = "Civ"

/datum/mil_rank/other/merc
	name = "Mercenary"
	name_short = "Merc"

/datum/mil_rank/other/free
	name = "Freelancer"
	name_short = "Free"