/datum/job/captain
	title = "Captain"
	department = "Command"
	supervisors = "the Regulator High Command and the God (He didn't answer last time)"
	department_flag = COM
	head_position = 1
	minimal_player_age = 21
	economic_power = 20
	ideal_character_age = 50
	outfit_type = /decl/hierarchy/outfit/job/castelnau/reg/com/captain
	total_positions = 1
	spawn_positions = 1
	req_admin_notify = 1
	allowed_branches = list(/datum/mil_branch/reg)
	allowed_ranks = list(/datum/mil_rank/reg/com)
	min_skill = list(	SKILL_BUREAUCRACY = SKILL_ADEPT,
						SKILL_PILOT       = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)


	skill_points = 25


	access = list(
	access_castelnau_command,
	access_castelnau_captain,
	access_castelnau_comoffice,
	access_castelnau_bridge,
	access_castelnau_eva,
	access_castelnau_tcoms,
	access_castelnau_netdiag,
	access_castelnau_idmod,

	access_castelnau_engineering,
	access_castelnau_engine,
	access_castelnau_atmospherics,
	access_castelnau_thrusters,
	access_castelnau_englab,
	access_castelnau_maint_tunnels,
	access_castelnau_external_airlocks,

	access_castelnau_security,
	access_castelnau_brig,
	access_castelnau_armory,
	access_castelnau_sheriff,
	access_castelnau_detective,

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
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/reports)

/datum/job/hop
	title = "Coordinator"
	supervisors = "the Captain"
	department = "Command"
	department_flag = COM
	head_position = 1
	total_positions = 1
	spawn_positions = 1
	req_admin_notify = 1
	minimal_player_age = 21
	economic_power = 12
	ideal_character_age = 45
	outfit_type = /decl/hierarchy/outfit/job/castelnau/reg/com/hop
	allowed_branches = list(/datum/mil_branch/reg)
	allowed_ranks = list(/datum/mil_rank/reg/com)
	min_skill = list(	SKILL_BUREAUCRACY = SKILL_ADEPT,
						SKILL_PILOT       = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)

	skill_points = 20

	access = list(
	access_castelnau_command,
	access_castelnau_comoffice,
	access_castelnau_bridge,
	access_castelnau_eva,
	access_castelnau_tcoms,
	access_castelnau_netdiag,
	access_castelnau_idmod,

	access_castelnau_engineering,
	access_castelnau_engine,
	access_castelnau_atmospherics,
	access_castelnau_thrusters,
	access_castelnau_englab,
	access_castelnau_maint_tunnels,
	access_castelnau_external_airlocks,

	access_castelnau_security,
	access_castelnau_brig,
	access_castelnau_armory,
	access_castelnau_detective,

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
