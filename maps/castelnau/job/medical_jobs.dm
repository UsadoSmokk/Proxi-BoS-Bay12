/datum/job/senior_doctor
	title = "Senior Doctor"
	alt_titles = list(
		"Surgeon")
	department = "Medical"
	department_flag = MED
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 25)
	total_positions = 3
	spawn_positions = 3
	supervisors = "the First Officer"
	selection_color = "#013d3b"
	economic_power = 8
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/medical/senior
	allowed_branches = list(
		/datum/mil_branch/larfleet,
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/medical/contractor/senior
	)
	allowed_ranks = list(
		/datum/mil_rank/larfleet/o1,
		/datum/mil_rank/larfleet/o2,
		/datum/mil_rank/civ/contractor
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_MEDICAL     = SKILL_EXPERT,
	                    SKILL_ANATOMY     = SKILL_EXPERT,
	                    SKILL_CHEMISTRY   = SKILL_BASIC,
	                    SKILL_DEVICES     = SKILL_ADEPT)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)
	skill_points = 20

	access = list(access_castelnau_medical, access_castelnau_morgue, access_castelnau_maint_tunnels, access_castelnau_eva)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)

/datum/job/doctor
	title = "Doctor"
	total_positions = 3
	spawn_positions = 3
	supervisors = "Senior Doctors"
	economic_power = 7
	minimum_character_age = list(SPECIES_HUMAN = 18)
	minimal_player_age = 0
	selection_color = "#013d3b"
	alt_titles = list(
		"Paramedic",
		"Nurse")
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/medical/doctor/fleet
	allowed_branches = list(
		/datum/mil_branch/larfleet,
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/medical/doctor
	)
	allowed_ranks = list(
		/datum/mil_rank/larfleet/e3,
		/datum/mil_rank/larfleet/e4,
		/datum/mil_rank/larfleet/e5,
		/datum/mil_rank/civ/contractor
	)
	min_skill = list(   SKILL_EVA     = SKILL_BASIC,
	                    SKILL_MEDICAL = SKILL_BASIC,
	                    SKILL_ANATOMY = SKILL_BASIC)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)

	access = list(access_castelnau_medical, access_castelnau_morgue, access_castelnau_maint_tunnels, access_castelnau_eva)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)
	skill_points = 22

/datum/job/doctor/virologist
	title = "Virologist" //Highly specialized role for handling viruses only. Not a physician. Not a medtech.
	total_positions = 1
	spawn_positions = 1
	supervisors = "Senior Doctors"
	economic_power = 8
	minimum_character_age = list(SPECIES_HUMAN = 25)
	minimal_player_age = 0
	selection_color = "#013d3b"
	alt_titles = list()
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/medical/virologist
	allowed_branches = list(
		/datum/mil_branch/larfleet = /decl/hierarchy/outfit/job/torch/crew/medical/virologist/fleet,
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/larfleet/o1,
		/datum/mil_rank/larfleet/o2,
		/datum/mil_rank/civ/contractor
	)
	min_skill = list(   SKILL_EVA      = SKILL_BASIC,
	                    SKILL_MEDICAL  = SKILL_BASIC,
	                    SKILL_ANATOMY  = SKILL_BASIC,
						SKILL_VIROLOGY = HAS_PERK)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)

	access = list(access_castelnau_medical, access_castelnau_morgue, access_castelnau_maint_tunnels, access_castelnau_eva)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)
	skill_points = 22

/datum/job/medical_trainee
	title = "Medical Trainee"
	department = "Medical"
	department_flag = MED
	total_positions = 1
	spawn_positions = 1
	supervisors = "Medical personnel"
	selection_color = "#013d3b"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	alt_titles = list(
		"Trainee Paramedic",
		"Trainee Nurse")

	outfit_type = /decl/hierarchy/outfit/job/torch/crew/medical/doctor
	allowed_branches = list(
		/datum/mil_branch/larfleet = /decl/hierarchy/outfit/job/torch/crew/medical/doctor/fleet,
		/datum/mil_branch/civilian
	)

	allowed_ranks = list(
		/datum/mil_rank/larfleet/e2,
		/datum/mil_rank/civ/contractor
	)

	skill_points = 4
	no_skill_buffs = TRUE

	min_skill = list(   SKILL_EVA     = SKILL_ADEPT,
	                    SKILL_HAULING = SKILL_ADEPT,
	                    SKILL_MEDICAL = SKILL_EXPERT,
	                    SKILL_ANATOMY = SKILL_BASIC)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)

	access = list(access_castelnau_medical, access_castelnau_morgue, access_castelnau_maint_tunnels, access_castelnau_eva)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)

/datum/job/medical_trainee/get_description_blurb()
	return "-"
/datum/job/chemist
	title = "Laboratory Technician"
	department = "Medical"
	department_flag = MED
	total_positions = 1
	spawn_positions = 1
	supervisors = "Senior Doctors"
	selection_color = "#013d3b"
	economic_power = 4
	minimum_character_age = list(SPECIES_HUMAN = 21)
	minimal_player_age = 0
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/medical/contractor/chemist
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/contractor)
	min_skill = list(   SKILL_MEDICAL   = SKILL_ADEPT,
	                    SKILL_CHEMISTRY = SKILL_ADEPT)

	max_skill = list(   SKILL_MEDICAL     = SKILL_ADEPT,
						SKILL_ANATOMY	  = SKILL_ADEPT,
	                    SKILL_CHEMISTRY   = SKILL_MAX)
	skill_points = 16

	access = list(access_medical, access_maint_tunnels, access_emergency_storage, access_medical_equip, access_solgov_crew, access_chemistry,
	 						access_virology, access_morgue, access_crematorium)

/datum/job/chemist/get_description_blurb()
	return "-"
/datum/job/psychiatrist
	title = "Redactor"
	total_positions = 1
	spawn_positions = 1
	economic_power = 5
	minimum_character_age = list(SPECIES_HUMAN = 24)
	minimal_player_age = 0
	supervisors = "Senior Doctors"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/medical/counselor

	allowed_branches = list(
		/datum/mil_branch/civilian)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor)
	min_skill = list(
		SKILL_BUREAUCRACY = SKILL_BASIC,
		SKILL_MEDICAL     = SKILL_BASIC
	)
	max_skill = list(
		SKILL_MEDICAL     = SKILL_MAX
	)
	access = list(access_medical, access_psychiatrist, access_maint_tunnels, access_solgov_crew, access_medical_equip, access_virology)
	software_on_spawn = list(
		/datum/computer_file/program/suit_sensors,
		/datum/computer_file/program/camera_monitor
	)

/datum/job/psychiatrist/get_description_blurb()
	return "Псионический Психиатр: Вашим прямым начальством является Главврач.\
	В Ваши обязанности входит оказание психологической помощи персоналу корабля, используя как стандартные методы психологии, так и свои псионические навыки.\
	Вам был присужден ранг Способного псионика в школе Принуждения, что означает Вашу способность поверхносно читать мысли,\
	излечивать ментальные проблемы (такие как Галлюцинации) и чувствовать психический потенциал других людей.\
	Редактор: В Ваши обязанности входит оказание первой медицинской помощи с помощью Ваших псионических навыков,\
	содействие остальным медицинским работникам и обучение интернов базовым вещам.\
	Несмотря на почти полное отсутствие практического медицинского опыта, Вы имеете ранг Способного псионика в школе Восстановления,\
	также называемой Редакции. Это означает, что Вы можете видеть все повреждения человека при прикосновении,\
	а также останавливать кровотечения и заживлять сломанные кости."

/datum/job/psychiatrist/equip(var/mob/living/carbon/human/H)
	psi_faculties = list("[PSI_REDACTION]" = PSI_RANK_OPERANT)
	return ..()
