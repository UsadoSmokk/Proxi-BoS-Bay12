/datum/map/hub
	name = "Hub"
	full_name = "IGI Hub"
	path = "hub"
	flags = MAP_HAS_BRANCH | MAP_HAS_RANK

	usable_email_tlds = list("freemail.net")

	allowed_spawns = list("Cryogenic Storage", "Cyborg Storage")
	default_spawn = "Cryogenic Storage"

	station_name  = "IGI Hub"
	station_short = "Hub"
	dock_name     = "TBD"
	boss_name     = "Free Trade Union Flotilla"
	boss_short    = "FTU Flotilla"
	company_name  = "Free Trade Union"
	company_short = "FTU"

	map_admin_faxes = list("Operational Headquarters")

	evac_controller_type = /datum/evacuation_controller/starship
	use_overmap = 1
	num_exoplanets = 1

	away_site_budget = 3.5