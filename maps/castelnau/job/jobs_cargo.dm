/datum/job/qm
	title = "Quartermaster"
	department = "Auxiliary"
	department_flag = SUP
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Captain, the First Mate and the Coordinator"
	economic_power = 8
	minimal_player_age = 7
	ideal_character_age = 35
	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/supply/quartermaster
	allowed_branches = list(/datum/mil_branch/reg,
							/datum/mil_branch/mil)
	allowed_ranks = list(/datum/mil_rank/reg,
						/datum/mil_rank/mil/scg,
						/datum/mil_rank/mil/lss,
						/datum/mil_rank/mil/iccg)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_FINANCE     = SKILL_ADEPT,
	                    SKILL_HAULING     = SKILL_BASIC)

	skill_points = 14

/*	access = list(access_castelnau_supply,
				  access_castelnau_qm,
				  access_castelnau_eva,
				  access_castelnau_maint_tunnels,
				  access_castelnau_hangar,
				  access_castelnau_bixie,
				  access_castelnau_bixie_helm,
				  access_castelnau_perseus,
				  access_castelnau_perseus_helm)
*/
	software_on_spawn = list(/datum/computer_file/program/supply,
							 /datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)


/datum/job/cargotech
	title = "Cargo Technician"
	department = "Auxiliary"
	department_flag = SUP
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Quartermaster"
	economic_power = 8
	minimal_player_age = 7
	ideal_character_age = 35
	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/supply/quartermaster
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
						/datum/mil_rank/other/merc,
						/datum/mil_rank/other/free)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_FINANCE     = SKILL_ADEPT,
	                    SKILL_HAULING     = SKILL_BASIC)

	skill_points = 14

/*	access = list(access_castelnau_supply,
				  access_castelnau_qm,
				  access_castelnau_eva,
				  access_castelnau_maint_tunnels,
				  access_castelnau_hangar,
				  access_castelnau_bixie,
				  access_castelnau_bixie_helm,
				  access_castelnau_perseus,
				  access_castelnau_perseus_helm)
*/
	software_on_spawn = list(/datum/computer_file/program/supply,
							 /datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)

/datum/job/mining
	title = "Shaft Miner"
	department = "Auxiliary"
	department_flag = SUP
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Quartermaster"
	selection_color = "#515151"
	economic_power = 7
	ideal_character_age = 25
	alt_titles = list(
		"Field Constructor")
	allowed_branches = list(
							/datum/mil_branch/par,
							/datum/mil_branch/other)
	allowed_ranks = list(
						/datum/mil_rank/par,
						/datum/mil_rank/other/merc,
						/datum/mil_rank/other/free)
	min_skill = list(   SKILL_MECH    = SKILL_BASIC,
	                    SKILL_HAULING = SKILL_ADEPT,
	                    SKILL_EVA     = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)

	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/supply/prospector
	allowed_branches = list(
							/datum/mil_branch/par,
							/datum/mil_branch/other)
	allowed_ranks = list(
						/datum/mil_rank/par,
						/datum/mil_rank/par/yak,
						/datum/mil_rank/other/merc,
						/datum/mil_rank/other/free)

/*	access = list(access_castelnau_supply,
				  access_castelnau_eva,
				  access_castelnau_maint_tunnels,
				  access_castelnau_hangar,
				  access_castelnau_bixie,
				  access_castelnau_bixie_helm,
				  access_castelnau_perseus,
				  access_castelnau_perseus_helm)
*/