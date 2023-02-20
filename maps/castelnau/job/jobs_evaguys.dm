/datum/job/pilot
	title = "Pilot"
	supervisors = "the Quartermaster"
	department = "Auxiliary"
	department_flag = SUP
	total_positions = 1
	spawn_positions = 1
	economic_power = 10
	minimal_player_age = 0
	selection_color = "#4f3230"
	minimum_character_age = list(SPECIES_HUMAN = 24)
	allowed_branches = list(
							/datum/mil_branch/mil,
							/datum/mil_branch/par,
							/datum/mil_branch/other)
	allowed_ranks = list(
						/datum/mil_rank/mil/lss = /decl/hierarchy/outfit/job/castelnau/crew/lss/pilot,
						/datum/mil_rank/mil/iccg = /decl/hierarchy/outfit/job/castelnau/crew/terran/pilot,
						/datum/mil_rank/par = /decl/hierarchy/outfit/job/castelnau/crew/par/pilot,
						/datum/mil_rank/other/free = /decl/hierarchy/outfit/job/castelnau/crew/pilot)

	min_skill = list(	SKILL_EVA   = SKILL_BASIC,
						SKILL_PILOT = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)

	access = list(
	access_castelnau_eva,

	access_castelnau_maint_tunnels,
	access_castelnau_external_airlocks,

	access_castelnau_bixie,
	access_castelnau_bixie_helm,
	access_castelnau_perseus,
	access_castelnau_perseus_helm
	)

/datum/job/outleader
	title = "Outpost Team Leader"
	department = "Command"
	department_flag = COM
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Captain and the Coordinator"
	selection_color = "#2f2f7f"
	minimal_player_age = 18
	economic_power = 7
	ideal_character_age = 24
	outfit_type = /decl/hierarchy/outfit/job/castelnau/reg
	allowed_branches = list(/datum/mil_branch/reg)
	allowed_ranks = list(/datum/mil_rank/reg)
	min_skill = list(	SKILL_BUREAUCRACY = SKILL_BASIC,
						SKILL_PILOT       = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)

	skill_points = 20


	access = list(
	access_castelnau_command,
	access_castelnau_bridge,
	access_castelnau_eva,
	access_castelnau_tcoms,

	access_castelnau_engineering,
	access_castelnau_engine,
	access_castelnau_atmospherics,
	access_castelnau_thrusters,
	access_castelnau_englab,
	access_castelnau_maint_tunnels,
	access_castelnau_external_airlocks,

	access_castelnau_security,
	access_castelnau_brig,

	access_castelnau_medical,
	access_castelnau_morgue,

	access_castelnau_bixie,
	access_castelnau_bixie_helm,
	access_castelnau_perseus,
	access_castelnau_perseus_helm,
	access_castelnau_janitor,
	access_castelnau_bar,
	access_castelnau_kitchen,
	access_castelnau_hangar,
	access_castelnau_teleporter
	)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/shields_monitor,
							 /datum/computer_file/program/reports,
							 /datum/computer_file/program/deck_management)

/*
/datum/job/inflead
	title = "Infantry Captain"
	department = "Infantry"
	department_flag = INF
	total_positions = 2
	spawn_positions = 2
	minimal_player_age = 6
	supervisors = "the Coordinator"
	selection_color = "#d43157"
	skill_points = 18
	minimum_character_age = list(SPECIES_HUMAN = 18)
//	outfit_type = /decl/hierarchy/outfit/job/torch/crew/infantry
	min_skill = list(	SKILL_COMBAT       = SKILL_ADEPT,
						SKILL_WEAPONS      = SKILL_ADEPT,
						SKILL_EVA          = SKILL_BASIC)

	max_skill = list(	SKILL_COMBAT      = SKILL_MAX,
						SKILL_WEAPONS     = SKILL_MAX,
						SKILL_EVA		  = SKILL_MAX)

	software_on_spawn = list(/datum/computer_file/program/deck_management)
	allowed_branches = list(/datum/mil_branch/reg)
	allowed_ranks = list(
		/datum/mil_rank/reg
	)

/datum/job/infantry
	title = "Infantry"
	department = "Infantry"
	department_flag = INF
	total_positions = 2
	spawn_positions = 2
	minimal_player_age = 6
	supervisors = "the Infantry Captain"
	selection_color = "#d43157"
	skill_points = 18
	minimum_character_age = list(SPECIES_HUMAN = 18)
	min_skill = list(	SKILL_COMBAT       = SKILL_ADEPT,
						SKILL_WEAPONS      = SKILL_ADEPT,
						SKILL_EVA          = SKILL_BASIC)

	max_skill = list(	SKILL_COMBAT      = SKILL_MAX,
						SKILL_WEAPONS     = SKILL_MAX,
						SKILL_EVA		  = SKILL_MAX)

	software_on_spawn = list(/datum/computer_file/program/deck_management)
	allowed_branches = list(
							/datum/mil_branch/mil,
							/datum/mil_branch/par,
							/datum/mil_branch/other)
	allowed_ranks = list(
						/datum/mil_rank/mil/scg,
						/datum/mil_rank/mil/lss,
						/datum/mil_rank/mil/iccg,
						/datum/mil_rank/par,
						/datum/mil_rank/par/yak,
						/datum/mil_rank/other/merc)
*/