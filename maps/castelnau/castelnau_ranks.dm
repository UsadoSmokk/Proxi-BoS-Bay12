/datum/job/submap
	branch = /datum/mil_branch/other
	rank =   /datum/mil_rank/other

/datum/map/castelnau
	branch_types = list(
		/datum/mil_branch/reg,
		/datum/mil_branch/mil,
		/datum/mil_branch/par,
//		/datum/mil_branch/cult,
		/datum/mil_branch/ftu,
		/datum/mil_branch/syndi,
		/datum/mil_branch/other
	)

	spawn_branch_types = list(
		/datum/mil_branch/reg,
		/datum/mil_branch/mil,
		/datum/mil_branch/par,
//		/datum/mil_branch/cult,
		/datum/mil_branch/ftu,
		/datum/mil_branch/syndi,
		/datum/mil_branch/other
	)

	species_to_branch_blacklist = list(
		/datum/species/human   = list(/datum/mil_branch/skrell_fleet),
		/datum/species/machine = list(/datum/mil_branch/skrell_fleet, /datum/mil_branch/mil),
		/datum/species/machine/shell = list(/datum/mil_branch/skrell_fleet),
		/datum/species/unathi = list(/datum/mil_branch/skrell_fleet, /datum/mil_branch/mil),
		/datum/species/unathi/yeosa = list(/datum/mil_branch/skrell_fleet, /datum/mil_branch/mil),
//		/datum/species/skrell = list(/datum/mil_branch/alien),
		/datum/species/diona = list(/datum/mil_branch/skrell_fleet, /datum/mil_branch/mil, /datum/mil_branch/reg),
		/datum/species/adherent = list(/datum/mil_branch/skrell_fleet, /datum/mil_branch/mil, /datum/mil_branch/reg),
		/datum/species/shapeshifter/promethean = list(/datum/mil_branch/skrell_fleet, /datum/mil_branch/mil, /datum/mil_branch/reg),
		/datum/species/vox = list(/datum/mil_branch/skrell_fleet, /datum/mil_branch/mil, /datum/mil_branch/syndi, /datum/mil_branch/reg)
		)

/*
 *  ==Branches==
 *  ============
 */

/datum/mil_branch/reg
	name = "Regulators"
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

/datum/mil_branch/mil
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
		/datum/mil_rank/mil/lss,
		/datum/mil_rank/mil/iccg,
	)

/datum/mil_branch/par
	name = "Alternatively Hired"
	name_short = "AltH"
	email_domain = "freemail.net"

	rank_types = list(
		/datum/mil_rank/par,
		/datum/mil_rank/par/yak
	)

	spawn_rank_types = list(
		/datum/mil_rank/par,
		/datum/mil_rank/par/yak
	)

/datum/mil_branch/ftu
	name = "Free Trade Union"
	name_short = "FTU"
	email_domain = "freetrade.net"

	rank_types = list(
		/datum/mil_rank/ftu,
		/datum/mil_rank/ftu/qm,
		/datum/mil_rank/ftu/sec
	)

	spawn_rank_types = list(
		/datum/mil_rank/ftu,
		/datum/mil_rank/ftu/qm,
		/datum/mil_rank/ftu/sec
	)
/*
/datum/mil_branch/cult
	name = "Nar'Si Faith Promotion Organization"
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
*/

/datum/mil_branch/syndi
	name = "Consortium of Trans-Star Corporations"
	name_short = "SYNDI"
	email_domain = "syndicate.net"

	rank_types = list(
		/datum/mil_rank/syndi,
		/datum/mil_rank/syndi/arbites,
		/datum/mil_rank/syndi/army
	)

	spawn_rank_types = list(
		/datum/mil_rank/syndi,
		/datum/mil_rank/syndi/arbites,
		/datum/mil_rank/syndi/army
	)

/datum/mil_branch/other
	name = "Other"
	name_short = "Other"
	email_domain = "freemail.net"

	rank_types = list(
		/datum/mil_rank/other,
		/datum/mil_rank/other/free,
		/datum/mil_rank/other/merc
	)

	spawn_rank_types = list(
		/datum/mil_rank/other,
		/datum/mil_rank/other/free,
		/datum/mil_rank/other/merc
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
	name = "Regulators"
	name_short = "Reg"

/datum/mil_rank/reg/com
	name = "Regulators Command"
	name_short = "RegCom"

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
	name = "ICL Military"
	name_short = "ICL"

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

/datum/mil_rank/par/yak
	name = "Yangui Scolopendras"
	name_short = "Yang"

/*
 *  Cultists
 *  =========
 *

/datum/mil_rank/cult
	name = "Nar'Sie Acolyte"
	name_short = "Acolyte"

/datum/mil_rank/cult/ich
	name = "Nar'Sie Ichorn"
	name_short = "Ichorn"
*/

/*
 *  Free Trade Union
 *  =========
 */

/datum/mil_rank/ftu
	name = "Free Trader"
	name_short = "TRD"

/datum/mil_rank/ftu/qm
	name = "FTU Quartermaster"
	name_short = "QM"

/datum/mil_rank/ftu/sec
	name = "FTU Security"
	name_short = "SEC"

/*
 *  Syndicate
 *  =========
 */

/datum/mil_rank/syndi
	name = "Syndicate Corporate Contractor"
	name_short = "CORP"

/datum/mil_rank/syndi/arbites
	name = "Arbiter"
	name_short = "ARB"

/datum/mil_rank/syndi/army
	name = "Corporate Army"
	name_short = "CARM"


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