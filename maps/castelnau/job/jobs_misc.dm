/datum/map/castelnau
	default_assistant_title = "Off-Duty"

/datum/job/assistant
	title = "Off-Duty"
	total_positions = -1
	alt_titles = list("Assistant")
	spawn_positions = -1
	department = "Civilian"
	department_flag = CIV
	supervisors = "the Captain and the Coordinator"
	selection_color = "#515151"
	economic_power = 6
	announced = FALSE
	outfit_type = /decl/hierarchy/outfit/job/castelnau/par
	allowed_branches = list(
							/datum/mil_branch/par,
							/datum/mil_branch/syndi,
							/datum/mil_branch/other)
	allowed_ranks = list(
						/datum/mil_rank/par,
						/datum/mil_rank/syndi = /decl/hierarchy/outfit/job/castelnau/syndi,
						/datum/mil_rank/par/yak = /decl/hierarchy/outfit/job/castelnau/yak,
					/datum/mil_rank/other/free = /decl/hierarchy/outfit/job/castelnau)

	access = list(
	access_castelnau_perseus
	)
