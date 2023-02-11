/datum/job/senior_engineer
	title = "Senior Engineer"
	department = "Engineering"
	department_flag = ENG
	supervisors = "the Captain, the First Mate and the Coordinator"
	selection_color = "#5b4d20"

	total_positions = 1
	spawn_positions = 1
	economic_power = 7
	minimal_player_age = 14
	ideal_character_age = 34

	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/engineering/senior_engineer
	allowed_branches = list(/datum/mil_branch/reg,
							/datum/mil_branch/mil)
	allowed_ranks = list(/datum/mil_rank/reg,
						/datum/mil_rank/mil/lss,
						/datum/mil_rank/mil/iccg)

	skill_points = 24
	min_skill = list(   SKILL_COMPUTER     = SKILL_BASIC,
						SKILL_BUREAUCRACY  = SKILL_BASIC,
	                    SKILL_EVA          = SKILL_ADEPT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_ADEPT,
	                    SKILL_ATMOS        = SKILL_BASIC,
	                    SKILL_ENGINES      = SKILL_ADEPT)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
						SKILL_COMPUTER     = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)

	access = list(
	access_castelnau_bridge,
	access_castelnau_eva,
	access_castelnau_tcoms,
	access_castelnau_netdiag,

	access_castelnau_engineering,
	access_castelnau_engine,
	access_castelnau_atmospherics,
	access_castelnau_thrusters,
	access_castelnau_englab,
	access_castelnau_maint_tunnels,
	access_castelnau_external_airlocks,

	access_castelnau_perseus,
	access_castelnau_perseus_helm,
	access_castelnau_teleporter
	)

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/shields_monitor)

/datum/job/engineer
	title = "Engineer"
	department = "Engineering"
	department_flag = ENG
	supervisors = "the Senior Engineer"
	selection_color = "#978035"

	total_positions = 2
	spawn_positions = 2
	minimal_player_age = 7
	ideal_character_age = 25
	economic_power = 6

	alt_titles = list(
		"Electrician" = /decl/hierarchy/outfit/job/castelnau/crew/engineering/engineer/electr,
		"Atmospheric Technician" = /decl/hierarchy/outfit/job/castelnau/crew/engineering/engineer/atmos,
		"Engineering Trainee")

	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/engineering/engineer
	allowed_branches = list(
							/datum/mil_branch/mil,
							/datum/mil_branch/par)
	allowed_ranks = list(
						/datum/mil_rank/mil/lss,
						/datum/mil_rank/mil/iccg,
						/datum/mil_rank/par,
						/datum/mil_rank/par/yak)

	skill_points = 20
	min_skill = list(   SKILL_COMPUTER     = SKILL_BASIC,
	                    SKILL_EVA          = SKILL_ADEPT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_BASIC,
	                    SKILL_ATMOS        = SKILL_BASIC,
	                    SKILL_ENGINES      = SKILL_BASIC)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_COMPUTER	   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)


	access = list(
	access_castelnau_eva,

	access_castelnau_engineering,
	access_castelnau_engine,
	access_castelnau_thrusters,
	access_castelnau_maint_tunnels,
	access_castelnau_external_airlocks,

	access_castelnau_perseus
	)

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/shields_monitor)
/datum/job/psiengineer
	title = "Psi-Engineer"
	department = "Engineering"
	department_flag = ENG
	supervisors = "the Senior Engineer"
	selection_color = "#978035"

	total_positions = 2
	spawn_positions = 2
	minimal_player_age = 7
	ideal_character_age = 25
	economic_power = 6
	give_psionic_implant_on_join = FALSE

	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/engineering/engineer
	allowed_branches = list(
							/datum/mil_branch/par)
	allowed_ranks = list(
						/datum/mil_rank/par)

	skill_points = 20
	min_skill = list(   SKILL_COMPUTER     = SKILL_BASIC,
	                    SKILL_EVA          = SKILL_ADEPT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_BASIC,
	                    SKILL_ATMOS        = SKILL_BASIC,
	                    SKILL_ENGINES      = SKILL_BASIC)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_COMPUTER	   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)


	access = list(
	access_castelnau_eva,

	access_castelnau_engineering,
	access_castelnau_engine,
	access_castelnau_thrusters,
	access_castelnau_maint_tunnels,
	access_castelnau_external_airlocks,

	access_castelnau_perseus
	)

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/shields_monitor)

/datum/job/scientist
	title = "Reverse Engineer"
	department = "Engineering"
	department_flag = ENG
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Senior Engineer"
	alt_titles = list(
		"Biomechanical Engineer")
	economic_power = 10
	ideal_character_age = 45
	selection_color = "#978035"
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_DEVICES     = SKILL_BASIC,
	                    SKILL_SCIENCE     = SKILL_ADEPT)

	max_skill = list(   SKILL_DEVICES     = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)

	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/research/scientist
	allowed_branches = list(
							/datum/mil_branch/mil,
							/datum/mil_branch/par,
							/datum/mil_branch/other)
	allowed_ranks = list(
						/datum/mil_rank/mil/lss,
						/datum/mil_rank/mil/iccg,
						/datum/mil_rank/par,
						/datum/mil_rank/other/free)

	access = list(
	access_castelnau_eva,

	access_castelnau_engineering,
	access_castelnau_englab,
	access_castelnau_maint_tunnels,
	access_castelnau_external_airlocks,

	access_castelnau_perseus
	)

	skill_points = 25