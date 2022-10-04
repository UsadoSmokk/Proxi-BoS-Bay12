#if !defined(using_map_DATUM)

	#include "castelnau_bos.dm"
	#include "castelnau_bos_torch.dm"

	#include "castelnau_announcements.dm"
	#include "castelnau_antagonism.dm"
	#include "castelnau_areas.dm"
	#include "castelnau_lobby.dm"
	#include "castelnau_overmap.dm"
	#include "castelnau_overrides.dm"
	#include "castelnau_presets.dm"
	#include "castelnau_procs.dm"
	#include "castelnau_ranks.dm"
	#include "castelnau_renames.dm"
	#include "castelnau_security_state.dm"
	#include "castelnau_shuttles.dm"
	#include "castelnau_unit_testing.dm"

	#include "code/_global_vars/lists/locations.dm"
	#include "code/game/objects/effects/landmarks.dm"
	#include "code/gamemodes/objectives.dm"
	#include "code/modules/client/preferences_spawnpoints.dm"
	#include "flooring/flooring_premade.dm"

	#include "datums/hairs.dm"

//	#include "items/buttons.dm"
	#include "items/drinks.dm"
	#include "items/items.dm"
	#include "items/lighting.dm"
	#include "items/machinery.dm"
	#include "items/mirror.dm"
	#include "items/random.dm"
	#include "items/mobile_ladders.dm"
	#include "items/nightstand.dm"

	#include "items/devices/flashlight.dm"

	#include "items/clothing/castelnau_hands.dm"
	#include "items/clothing/castelnau_under.dm"
	#include "items/clothing/castelnau_head.dm"
	#include "items/clothing/castelnau_suit.dm"


	#include "job/departments.dm"
	#include "job/access.dm"
	#include "job/jobs.dm"
	#include "job/command_jobs.dm"
	#include "job/engineering_jobs.dm"
	#include "job/medical_jobs.dm"
	#include "job/misc_jobs.dm"
	#include "job/security_jobs.dm"
	#include "job/marine_jobs.dm"
	#include "job/aux_jobs.dm"
	#include "job/research_jobs.dm"

	#include "job/outfits/outfits.dm"
	#include "job/outfits/command_outfits.dm"
	#include "job/outfits/sortthislater_outfits.dm"
	#include "job/outfits/engineering_outfits.dm"
	#include "job/outfits/exploration_outfits.dm"
	#include "job/outfits/medical_outfits.dm"
	#include "job/outfits/misc_outfits.dm"
	#include "job/outfits/security_outfits.dm"
	#include "job/outfits/service_outfits.dm"
	#include "job/outfits/supply_outfits.dm"
	#include "job/outfits/marine_outfits.dm"

	#include "machinery/lighting.dm"
	#include "machinery/other.dm"

	#include "structures/bedsheet_bin.dm"
	#include "structures/fake_stairs.dm"
	#include "structures/navlights.dm"
	#include "structures/flora.dm"
	#include "structures/sign.dm"
	#include "structures/watercloset.dm"
	#include "structures/wood.dm"

	#include "structures/stool_bed_chair_nest/bed.dm"	//FUCK YOU
	#include "structures/stool_bed_chair_nest/chairs.dm"

	#include "castelnau-1.dmm"
	#include "castelnau-2.dmm"
	#include "castelnau-3.dmm"
	#include "z1-admin.dmm"
	#include "z2-transit.dmm"

	#include "../away/empty.dmm"
	#include "../away/rawl/rawl.dm"
	#include "../away/solship/solship.dm"
	#include "../away/mining/mining.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/bearcat/bearcat.dm"
	#include "../away/lost_supply_base/lost_supply_base.dm"
	#include "../away/smugglers/smugglers.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/casino/casino.dm"
	#include "../away/yacht/yacht.dm"
	#include "../away/venera/venera.dm"
	#include "../away/blueriver/blueriver.dm"
	#include "../away/slavers/slavers_base.dm"
	#include "../away/mobius_rift/mobius_rift.dm"
	#include "../away/errant_pisces/errant_pisces.dm"
	#include "../away/lar_maria/lar_maria.dm"
	#include "../away/ascent/ascent.dm"
	#include "../away/voxship/voxship.dm"
	#include "../away/skrellscoutship/skrellscoutship.dm"
	#include "../away/meatstation/meatstation.dm"
	#include "../away/miningstation/miningstation.dm"
	#include "../away/mininghome/mininghome.dm"
	#include "../away/scavver/scavver_gantry.dm"
	#include "../away/raidership/raider_vessel.dm"
	#include "../away/spystation/spy_station.dm"

	#define using_map_DATUM /datum/map/castelnau

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Castelnau

#endif
