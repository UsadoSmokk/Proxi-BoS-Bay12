/datum/job/assistant
	title = "Assistant"
	alt_titles = list()
	total_positions = 4
	spawn_positions = 4
	department = "Civilian"
	department_flag = CIV
	supervisors = "the Captain, the First Mate and the Coordinator"
	selection_color = "#515151"
	economic_power = 6
	announced = FALSE
	outfit_type = /decl/hierarchy/outfit/job/castelnau/crewman
	allowed_branches = list(
							/datum/mil_branch/par,
							/datum/mil_branch/other)
	allowed_ranks = list(
						/datum/mil_rank/par,
						/datum/mil_rank/par/yak,
						/datum/mil_rank/other/merc,
						/datum/mil_rank/other/free)
