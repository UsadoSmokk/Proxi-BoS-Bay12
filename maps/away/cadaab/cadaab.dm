#include "areas.dm"
#include "objects.dm"
#include "turfs.dm"

/datum/map_template/ruin/away_site/cadaab
	name = "Cadaab"
	id = "awaysite_cadaab"
	spawn_cost = 0.1
	description = "The hot desert Moon of Inax. A recent landslide caused many roads to be blocked."
	suffixes = list("cadaab/cadaab.dmm")
	generate_mining_by_z = 1
	area_usage_test_exempted_root_areas = list(/area/cadaab)
	apc_test_exempt_areas = list(
		/area/cadaab/outpost = NO_SCRUBBER|NO_VENT,
		/area/cadaab/desert = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/cadaab/caves = NO_SCRUBBER|NO_VENT
	)

/obj/effect/overmap/visitable/sector/cadaab
	name = "Cadaab"
	desc = "The hot desert Moon of Inax. A recent landslide caused many roads to be blocked."
	sector_flags = OVERMAP_SECTOR_KNOWN
	start_x = 4
	start_y = 4
	icon_state = "globe"
	color = "#cc6600"
	initial_generic_waypoints = list(
		"nav_outpost",
		"nav_shahtinsk"
	)

/obj/effect/overmap/visitable/sector/inax
	name = "Inax"
	desc = "Inax is a dark jungle planet, in a place where the Independent Confederation of Lordania has no serious influence. Thus, it is inhabited by pirates and other undesirables who live in small settlements on nitrogen-rich land."
	icon_state = "globe"
	color = "#00cc66"
	start_x = 5
	start_y = 5
	sector_flags = OVERMAP_SECTOR_KNOWN

/datum/shuttle/autodock/overmap/syndi
	name = "PrettyBoy"
	move_time = 60
	shuttle_area = list(
		/area/cadaab/outpost/syndishuttle
	)
	dock_target = "prettyboy_shuttle"
	current_location = "nav_prettyboy_dock"
	landmark_transition = "nav_prettyboy_transit"
	range = 1
	logging_home_tag = "nav_prettyboy_dock"
	logging_access = access_castelnau_syndipass
	ceiling_type = /turf/simulated/floor/shuttle_ceiling

/obj/effect/shuttle_landmark/castelnau/hangar/syndi
	name = "Place near the Outpost"
	landmark_tag = "nav_prettyboy_dock"
	docking_controller = "prettyboy_shuttle_dock"
	base_area = /area/cadaab/outpost/landing
	base_turf = /turf/simulated/floor

/obj/effect/shuttle_landmark/castelnau/transit/syndi
	name = "Transit"
	landmark_tag = "nav_prettyboy_transit"

/obj/effect/overmap/visitable/ship/landable/syndi
	name = "SSS PrettyBoy"
	shuttle = "PrettyBoy"
	vessel_mass = 1000
	fore_dir = NORTH

/obj/machinery/computer/shuttle_control/explore/syndi
	name = "Handsome control console"
	shuttle_tag = "PrettyBoy"
	req_access = list(access_castelnau_syndipass)

/obj/effect/shuttle_landmark/castelnau/outpost
	name = "Outpost - Landing Zone"
	landmark_tag = "nav_outpost"

/obj/effect/shuttle_landmark/castelnau/shahtinsk
	name = "Place near Shahtinsk"
	landmark_tag = "nav_shahtinsk"