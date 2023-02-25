/datum/job/assistant
	title = "Assistant"
	total_positions = 4
	alt_titles = list()
	spawn_positions = 4
	department = "Civilian"
	department_flag = CIV
	supervisors = "the Captain and the Coordinator"
	selection_color = "#515151"
	economic_power = 6
	announced = FALSE
	allowed_branches = list(
							/datum/mil_branch/par,
							/datum/mil_branch/other)
	allowed_ranks = list(
						/datum/mil_rank/par = /decl/hierarchy/outfit/job/castelnau/par,
						/datum/mil_rank/par/yak = /decl/hierarchy/outfit/job/castelnau/yak,
						/datum/mil_rank/other/free = /decl/hierarchy/outfit/job/castelnau)

	access = list(
	access_castelnau_perseus
	)
