/datum/job/captain
	title = "Commanding Officer"
	supervisors = "Operational Headquarters and your conscience"
	minimal_player_age = 14
	economic_power = 15
	minimum_character_age = list(SPECIES_HUMAN = 40)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/CO
	allowed_branches = list(
		/datum/mil_branch/larfleet
	)
	allowed_ranks = list(
		/datum/mil_rank/larfleet/o6
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_SCIENCE     = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/captain/get_description_blurb()
	return "Ты - Командующий Офицер. Выше тебя только Оперативный Штаб, военно-полевой суд, ну и морально-этические нормы, с чем ты можешь спорить.\
	Ты опытный и эффективный руководитель и менеджер прекрасного корабля Лордании, и именно с тебя будет спрос за всё, что происходит с ним, либо на нём.\
	Твоя задача состоит в том, чтобы [GLOB.using_map.full_name] в полной мере выполнял свою боевую задачу - разведку территорий.\
	 Пользуйтесь помощью Первого Офицера, глав отделов , (и вашего политрука) для эффективного управления кораблём, но не пренебрегайте собственным опытом."
/datum/job/captain/post_equip_rank(var/mob/person, var/alt_title)
	var/sound/announce_sound = (GAME_STATE <= RUNLEVEL_SETUP)? null : sound('sound/misc/boatswain.ogg', volume=20)
	captain_announcement.Announce("All hands, [alt_title || title] [person.real_name] on deck!", new_sound = announce_sound)
	..()

	access = list(access_castelnau_supply,
				  access_castelnau_qm,
				  access_castelnau_eva,
				  access_castelnau_maint_tunnels,
				  access_castelnau_hangar,
				  access_castelnau_bixie,
				  access_castelnau_bixie_helm,
				  access_castelnau_perseus,
				  access_castelnau_perseus_helm,
				  access_castelnau_security,
				  access_castelnau_brig,
				  access_castelnau_armory,
				  access_castelnau_sheriff,
				  access_castelnau_janitor,
				  access_castelnau_external_airlocks,
				  access_castelnau_tcoms,
				  access_castelnau_netdiag,
				  access_castelnau_bridge,
				  access_castelnau_captain,
				  access_castelnau_comoffice,
				  access_castelnau_command,
				  access_castelnau_medical,
				  access_castelnau_morgue,
				  access_castelnau_bar,
				  access_castelnau_kitchen,
				  access_castelnau_hangar,
				  access_castelnau_idmod,
				  access_castelnau_engineering,
				  access_castelnau_engine,
				  access_castelnau_atmospherics,
				  access_castelnau_seneng,
				  access_castelnau_thrusters)

/datum/job/hop
	title = "First Officer"
	supervisors = "the Commanding Officer"
	department = "Command"
	department_flag = COM
	minimal_player_age = 8
	economic_power = 12
	minimum_character_age = list(SPECIES_HUMAN = 35)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/XO
	allowed_branches = list(
		/datum/mil_branch/larfleet
	)
	allowed_ranks = list(
		/datum/mil_rank/larfleet/o5
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_PILOT       = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30

	access = list(access_castelnau_supply,
				  access_castelnau_qm,
				  access_castelnau_eva,
				  access_castelnau_maint_tunnels,
				  access_castelnau_hangar,
				  access_castelnau_bixie,
				  access_castelnau_bixie_helm,
				  access_castelnau_perseus,
				  access_castelnau_perseus_helm,
				  access_castelnau_security,
				  access_castelnau_brig,
				  access_castelnau_armory,
				  access_castelnau_sheriff,
				  access_castelnau_janitor,
				  access_castelnau_external_airlocks,
				  access_castelnau_tcoms,
				  access_castelnau_netdiag,
				  access_castelnau_bridge,
				  access_castelnau_comoffice,
				  access_castelnau_command,
				  access_castelnau_medical,
				  access_castelnau_morgue,
				  access_castelnau_bar,
				  access_castelnau_kitchen,
				  access_castelnau_hangar,
				  access_castelnau_idmod,
				  access_castelnau_engineering,
				  access_castelnau_seneng,
				  access_castelnau_atmospherics)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/hop/get_description_blurb()
	return "Ты - Первый ОФицер.\
	Будучи опытным старшим офицером, ты являешься буквально вторым по значимости на всём корабле, с вытекающей ответственностью за бесперебойную работу на корабле, \
	под взором командующего офицера, которого ты заменяешь в его отсутствии.\
	Твоей основной обязанностью является (!)непосредственное управление руководителями отделов и всеми теми, кто не перебывает в каком-либо отделе.\
	Вы также несете ответственность за подрядчиков и пассажиров на борту корабля. Не пренебрегайте помощью Мостовых Офицеров и политрука!"

/datum/job/hos
	title = "Sheriff"
	supervisors = "the Commanding Officer and the First Officer"
	economic_power = 8
	minimal_player_age = 14
	minimum_character_age = list(SPECIES_HUMAN = 25)
	alt_titles = list(
		"PMC Ranger",
		"Security Pointman"
		)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/cos
	allowed_branches = list(
		/datum/mil_branch/larfleet,
	)
	allowed_ranks = list(
		/datum/mil_rank/larfleet/o3,
		/datum/mil_rank/larfleet/o4
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)
	skill_points = 28

	access = list(access_castelnau_bridge,
				  access_castelnau_comoffice,
				  access_castelnau_command,
				  access_castelnau_sheriff,
				  access_castelnau_security,
				  access_castelnau_brig,
				  access_castelnau_armory,
				  access_castelnau_maint_tunnels,
				  access_castelnau_external_airlocks,
				  access_castelnau_hangar,
				  access_castelnau_eva)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/hos/get_description_blurb()
	return "-"

/datum/job/sea
	title = "Political Officer"
	department = "Support"
	department_flag = SPT
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Commanding Officer and the First Officer"
	selection_color = "#2f2f7f"
	minimal_player_age = 6
	economic_power = 8
	minimum_character_age = list(SPECIES_HUMAN = 35)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/sea/fleet
	allowed_branches = list(
		/datum/mil_branch/larfleet,
		/datum/mil_branch/lord
	)
	allowed_ranks = list(
		/datum/mil_rank/larfleet/e8,
		/datum/mil_rank/larfleet/e9_alt2,
		/datum/mil_rank/larfleet/e9,
		/datum/mil_rank/lord/kgb = /decl/hierarchy/outfit/job/torch/crew/command/sea/fleet/kgb //cursed af
	)
	min_skill = list(   SKILL_EVA        = SKILL_BASIC,
	                    SKILL_COMBAT     = SKILL_BASIC,
	                    SKILL_WEAPONS    = SKILL_ADEPT)

	max_skill = list(   SKILL_COMBAT       = SKILL_MAX,
	                    SKILL_WEAPONS      = SKILL_MAX,
	                    SKILL_PILOT        = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX)
	skill_points = 24


	access = list(access_medical, access_engine, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_bridge, access_all_personal_lockers, access_janitor,
			            access_kitchen, access_cargo, access_RC_announce, access_keycard_auth, access_guppy_helm,
			            access_solgov_crew, access_gun, access_expedition_shuttle, access_guppy, access_senadv, access_hangar, access_emergency_armory, access_gunnery, access_security)

	software_on_spawn = list(/datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/sea/get_description_blurb()
	return "-"

/datum/job/bridgeofficer
	title = "Second Officer"
	department = "Support"
	department_flag = SPT
	total_positions = 3
	spawn_positions = 3
	alt_titles = list(
		"Piloting Officer",
		"Navigator")
	supervisors = "the Commanding Officer and heads of staff"
	selection_color = "#2f2f7f"
	minimal_player_age = 0
	economic_power = 7
	minimum_character_age = list(SPECIES_HUMAN = 21,SPECIES_UNATHI = 21, SPECIES_SKRELL = 21, SPECIES_PROMETHEAN = 21, SPECIES_YEOSA = 21, SPECIES_TAJ = 21)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/bridgeofficer
	allowed_branches = list(
		/datum/mil_branch/larfleet,
	)
	allowed_ranks = list(
		/datum/mil_rank/larfleet/o1,
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_PILOT       = SKILL_ADEPT,
						SKILL_SCIENCE     = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
						SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 20


	access = list(access_castelnau_supply,
				  access_castelnau_eva,
				  access_castelnau_maint_tunnels,
				  access_castelnau_hangar,
				  access_castelnau_bixie,
				  access_castelnau_bixie_helm,
				  access_castelnau_perseus,
				  access_castelnau_perseus_helm,
				  access_castelnau_brig,
				  access_castelnau_armory,
				  access_castelnau_janitor,
				  access_castelnau_external_airlocks,
				  access_castelnau_tcoms,
				  access_castelnau_netdiag,
				  access_castelnau_bridge,
				  access_castelnau_command,
				  access_castelnau_medical,
				  access_castelnau_morgue,
				  access_castelnau_bar,
				  access_castelnau_kitchen,
				  access_castelnau_hangar,
				  access_castelnau_idmod,
				  access_castelnau_engineering,
				  access_castelnau_engine,
				  access_castelnau_atmospherics,
				  access_castelnau_thrusters)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor,
							 /datum/computer_file/program/reports,
							 /datum/computer_file/program/deck_management)

/datum/job/bridgeofficer/get_description_blurb()
	return "-"