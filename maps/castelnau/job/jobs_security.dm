/datum/job/warden
	title = "Sheriff"
	department = "Security"
	department_flag = SEC
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Captain, the First Officer and the Second Officer"
	economic_power = 8
	minimal_player_age = 14
	ideal_character_age = 35
	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/security/warden
	allowed_branches = list(/datum/mil_branch/reg)
	allowed_ranks = list(/datum/mil_rank/reg)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_HAULING	  = SKILL_ADEPT,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_ADEPT)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)
	skill_points = 25

	access = list(access_castelnau_sheriff,
				  access_castelnau_security,
				  access_castelnau_brig,
				  access_castelnau_armory,
				  access_castelnau_maint_tunnels,
				  access_castelnau_external_airlocks,
				  access_castelnau_hangar,
				  access_castelnau_eva)

/datum/job/officer
	title = "Security Operative"
	department = "Security"
	department_flag = SEC
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Sheriff"
	economic_power = 6
	minimal_player_age = 10
	ideal_character_age = 25

	skill_points = 20

	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/security/officer
	allowed_branches = list(
							/datum/mil_branch/mil,
							/datum/mil_branch/par)
	allowed_ranks = list(
						/datum/mil_rank/mil/scg,
						/datum/mil_rank/mil/lss,
						/datum/mil_rank/mil/iccg,
						/datum/mil_rank/par,
						/datum/mil_rank/par/yak,
						/datum/mil_rank/other/merc)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_HAULING     = SKILL_ADEPT,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX)

	access = list(access_castelnau_security,
				  access_castelnau_brig,
				  access_castelnau_armory,
				  access_castelnau_maint_tunnels,
				  access_castelnau_external_airlocks,
				  access_castelnau_hangar,
				  access_castelnau_eva)

/datum/job/specialist
	title = "Bounty Hunter"
	department = "Security"
	department_flag = SEC
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Sheriff"
	selection_color = "#601c1c"
	economic_power = 6
	minimal_player_age = 10
	ideal_character_age = 25
	alt_titles = list(
		"Psi-Interrogator")

	skill_points = 20

	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/security/officer
	allowed_branches = list(
							/datum/mil_branch/mil,
							/datum/mil_branch/par)
	allowed_ranks = list(
						/datum/mil_rank/mil/scg,
						/datum/mil_rank/mil/lss,
						/datum/mil_rank/mil/iccg,
						/datum/mil_rank/par,
						/datum/mil_rank/par/yak,
						/datum/mil_rank/other/merc)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_HAULING     = SKILL_ADEPT,
	                    SKILL_WEAPONS     = SKILL_BASIC,
	                    SKILL_FORENSICS   = SKILL_ADEPT)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)

/datum/job/detective/equip(var/mob/living/carbon/human/H)
	if(H.mind.role_alt_title == "Psi-Interrogator")
		psi_faculties = list("[PSI_COERCION]" = PSI_RANK_OPERANT)
	return ..()