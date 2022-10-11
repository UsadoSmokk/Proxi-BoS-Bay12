/datum/job/pathfinder
	title = "Scout Leader"
	department = "Science"
	department_flag = EXP
	total_positions = 1
	spawn_positions = 1
	head_position = 1
	supervisors = "the Research Director"
	selection_color = "#68099e"
	minimal_player_age = 4
	economic_power = 7
	minimum_character_age = list(SPECIES_HUMAN = 21)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/exploration/pathfinder
	allowed_branches = list(/datum/mil_branch/civilian, /datum/mil_branch/lord)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor, /datum/mil_rank/lord/gov
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
						SKILL_EVA	     = SKILL_ADEPT,
						SKILL_SCIENCE     = SKILL_ADEPT,
						SKILL_PILOT       = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
						SKILL_SCIENCE     = SKILL_MAX,
						SKILL_COMBAT      = SKILL_EXPERT,
						SKILL_WEAPONS     = SKILL_EXPERT)
	skill_points = 22

	access = list(access_castelnau_prometeus, access_castelnau_prometeus_helm)
	)

	software_on_spawn = list(/datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)

/datum/job/pathfinder/get_description_blurb()
	return "Вы - Руководитель Экспедиционных Работ. Ваша задача - организовывать экспедиции к отдаленным и неисследованным объектам. Вы же и управляете командой Исследователей, удостовреяясь, что вся команда полностью укомплектована. Кроме того, Вы пилотируете Харон, если пилота нет на смене. Отправляясь на задание, убедитесь, что всё, предоставляющее научный интерес будет доставлено в научную лабораторию на корабль."

/datum/job/scientist
	title = "Scientist"
	department = "Science"
	department_flag = SCI
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Research Director"
	economic_power = 10
	minimum_character_age = list(SPECIES_HUMAN = 25)
	minimal_player_age = 0
	alt_titles = list(,
		"Anomalist",
		"Xenobiologist",
		"Xenobotanist",
		"Circuitry Designer",
		"Chemical Researcher"
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
						SKILL_COMPUTER    = SKILL_BASIC,
						SKILL_DEVICES     = SKILL_BASIC,
						SKILL_SCIENCE     = SKILL_ADEPT,
						SKILL_CHEMISTRY   = SKILL_BASIC)

	max_skill = list(   SKILL_ANATOMY     = SKILL_MAX,
						SKILL_DEVICES     = SKILL_MAX,
						SKILL_SCIENCE     = SKILL_MAX,
						SKILL_CHEMISTRY   = SKILL_MAX)

	outfit_type = /decl/hierarchy/outfit/job/torch/crew/research/scientist
	allowed_branches = list(
		/datum/mil_branch/civilian, /datum/mil_branch/lord
	)
	allowed_ranks = list(,
		/datum/mil_rank/civ/contractor, /datum/mil_rank/lord/gov
	)

	access = list(access_castelnau_prometeus, access_castelnau_prometeus_helm)
	skill_points = 20

/datum/job/explorer
	title = "Scout"
	department = "Science"
	department_flag = EXP
	total_positions = 5
	spawn_positions = 5
	supervisors = "the Commanding Officer, Executive Officer, and Exploration Operations Leader"
	selection_color = "#68099e"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/research/scientist

	allowed_branches = list(/datum/mil_branch/civilian, /datum/mil_branch/lord)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor, /datum/mil_rank/lord/gov
	)
	min_skill = list(   SKILL_EVA = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
						SKILL_SCIENCE     = SKILL_MAX,
						SKILL_COMBAT      = SKILL_EXPERT,
						SKILL_WEAPONS     = SKILL_EXPERT)

	access = list(access_castelnau_prometeus, access_castelnau_prometeus_helm)

	software_on_spawn = list(/datum/computer_file/program/deck_management)

/datum/job/explorer/get_description_blurb()
	return "Полевой Ученый: Вашим прямым начальством является Руководитель Разведывательных Работ. В Ваши обязанности входит проведение экспериментов на территории исследуемых объектов, поиск артефактов неземного происхождения, анализ возможной флоры и фауны. Скорее всего, Вы столкнетесь с областями высокой опасности, агрессивными формами жизни, или сбойными системами защиты, так что смотрите в оба. \
	Экспедитор: В Ваши обязанности входит активное исследование объектов, поиск артефактов неземного происхождения, месторождений полезных ископаемых. \
	Ксеноархеолог: В Ваши обязанности входит проведение раскопок, изучение быта и культуры древних цивилизаций, анализ зловещих иероглифов и рун."
