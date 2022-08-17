/datum/job/submap/voxship_vox
	title = "Shard Acolyte"
	total_positions = 3
	outfit_type = /decl/hierarchy/outfit/job/voxship/crew
	supervisors = "Quill, The Apex and the arkship"
	info = "By the will of the dead creators, you must reclaim the lost territory of their fallen empire, and re-establish the domain of the Auralis no matter the cost. \
	Honor their memory, obey your Quill-Captain."
	whitelisted_species = list(SPECIES_VOX)
	blacklisted_species = null
	is_semi_antagonist = TRUE
	max_skill = list(   SKILL_BUREAUCRACY = SKILL_MAX,
	                    SKILL_FINANCE = SKILL_MAX,
	                    SKILL_EVA = SKILL_MAX,
	                    SKILL_MECH = SKILL_MAX,
	                    SKILL_PILOT = SKILL_MAX,
	                    SKILL_HAULING = SKILL_MAX,
	                    SKILL_COMPUTER = SKILL_MAX,
	                    SKILL_BOTANY = SKILL_MAX,
	                    SKILL_COOKING = SKILL_MAX,
	                    SKILL_COMBAT = SKILL_MAX,
	                    SKILL_WEAPONS = SKILL_MAX,
	                    SKILL_FORENSICS = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL = SKILL_ADEPT,
	                    SKILL_ATMOS = SKILL_ADEPT,
	                    SKILL_ENGINES = SKILL_ADEPT,
	                    SKILL_DEVICES = SKILL_MAX,
	                    SKILL_SCIENCE = SKILL_MAX,
	                    SKILL_MEDICAL = SKILL_ADEPT,
	                    SKILL_ANATOMY = SKILL_ADEPT,
	                    SKILL_CHEMISTRY = SKILL_ADEPT)
	skill_points = 40

/datum/job/submap/voxship_vox/doc
	title = "Shard Biotechnician"
	total_positions = 2
	info = "Your sacred duty is to preserve the lives of your ship-band; \
	save their stacks, stabilize wounded crew, replace missing components and ensure nobody messes with your patients or your workspace."
	whitelisted_species = list(SPECIES_VOX)
	min_skill = list(	SKILL_HAULING     = SKILL_BASIC,
						SKILL_EVA         = SKILL_EXPERT,
						SKILL_MEDICAL     = SKILL_EXPERT,
						SKILL_ANATOMY     = SKILL_EXPERT,
						SKILL_CHEMISTRY   = SKILL_ADEPT,
						SKILL_WEAPONS     = SKILL_ADEPT)


	max_skill = list(   SKILL_BUREAUCRACY = SKILL_MAX,
	                    SKILL_FINANCE = SKILL_MAX,
	                    SKILL_EVA = SKILL_MAX,
	                    SKILL_MECH = SKILL_MAX,
	                    SKILL_PILOT = SKILL_MAX,
	                    SKILL_HAULING = SKILL_MAX,
	                    SKILL_COMPUTER = SKILL_MAX,
	                    SKILL_BOTANY = SKILL_MAX,
	                    SKILL_COOKING = SKILL_MAX,
	                    SKILL_COMBAT = SKILL_MAX,
	                    SKILL_WEAPONS = SKILL_MAX,
	                    SKILL_FORENSICS = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL = SKILL_ADEPT,
	                    SKILL_ATMOS = SKILL_ADEPT,
	                    SKILL_ENGINES = SKILL_ADEPT,
	                    SKILL_DEVICES = SKILL_MAX,
	                    SKILL_SCIENCE = SKILL_MAX,
	                    SKILL_MEDICAL = SKILL_MAX,
	                    SKILL_ANATOMY = SKILL_MAX,
	                    SKILL_CHEMISTRY = SKILL_MAX)
	skill_points = 26

/datum/job/submap/voxship_vox/engineer
	title = "Shard Technician"
	total_positions = 2
	whitelisted_species = list(SPECIES_VOX)
	min_skill = list(	SKILL_HAULING      = SKILL_BASIC,
						SKILL_COMPUTER     = SKILL_ADEPT,
	                    SKILL_EVA          = SKILL_EXPERT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_ADEPT,
	                    SKILL_ATMOS        = SKILL_ADEPT,
	                    SKILL_ENGINES      = SKILL_ADEPT,
	                    SKILL_WEAPONS      = SKILL_ADEPT)


	max_skill = list(   SKILL_BUREAUCRACY = SKILL_MAX,
	                    SKILL_FINANCE = SKILL_MAX,
	                    SKILL_EVA = SKILL_MAX,
	                    SKILL_MECH = SKILL_MAX,
	                    SKILL_PILOT = SKILL_MAX,
	                    SKILL_HAULING = SKILL_MAX,
	                    SKILL_COMPUTER = SKILL_MAX,
	                    SKILL_BOTANY = SKILL_MAX,
	                    SKILL_COOKING = SKILL_MAX,
	                    SKILL_COMBAT = SKILL_MAX,
	                    SKILL_WEAPONS = SKILL_MAX,
	                    SKILL_FORENSICS = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL = SKILL_MAX,
	                    SKILL_ATMOS = SKILL_MAX,
	                    SKILL_ENGINES = SKILL_MAX,
	                    SKILL_DEVICES = SKILL_MAX,
	                    SKILL_SCIENCE = SKILL_MAX,
	                    SKILL_MEDICAL = SKILL_ADEPT,
	                    SKILL_ANATOMY = SKILL_ADEPT,
	                    SKILL_CHEMISTRY = SKILL_ADEPT)
	skill_points = 26

/datum/job/submap/voxship_vox/quill
	title = "Shard Quill"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/voxship/crew/captain
	supervisors = "The Apex and the arkship"
	info = "You are the Quill-Captain of a handsome shard-class frigate, a scout vessel for the Ark Fleets of the Vox. \
	The dead empire is being reborn, new planets settled, alliances made. To one of the five ark admirals you are sworn, and they have your complete loyalty. \
	The age of stagnancy is over, you have purpose anew, the crew must know this. \
	Ensure they do not disgrace the memory of the Auralis, that they do not forget the faith, and that new territory is claimed and material secured for the arks. \
	Measure your discipline lest you be challenged for being too lenient or harsh."
	whitelisted_species = list(SPECIES_VOX)
	min_skill = list(	SKILL_HAULING     = SKILL_BASIC,
						SKILL_EVA         = SKILL_EXPERT,
						SKILL_SCIENCE     = SKILL_BASIC,
						SKILL_PILOT       = SKILL_ADEPT,
						SKILL_COMBAT      = SKILL_ADEPT,
						SKILL_WEAPONS     = SKILL_ADEPT)


	max_skill = list(   SKILL_BUREAUCRACY = SKILL_MAX,
	                    SKILL_FINANCE = SKILL_MAX,
	                    SKILL_EVA = SKILL_MAX,
	                    SKILL_MECH = SKILL_MAX,
	                    SKILL_PILOT = SKILL_MAX,
	                    SKILL_HAULING = SKILL_MAX,
	                    SKILL_COMPUTER = SKILL_MAX,
	                    SKILL_BOTANY = SKILL_MAX,
	                    SKILL_COOKING = SKILL_MAX,
	                    SKILL_COMBAT = SKILL_MAX,
	                    SKILL_WEAPONS = SKILL_MAX,
	                    SKILL_FORENSICS = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL = SKILL_EXPERT,
	                    SKILL_ATMOS = SKILL_EXPERT,
	                    SKILL_ENGINES = SKILL_EXPERT,
	                    SKILL_DEVICES = SKILL_MAX,
	                    SKILL_SCIENCE = SKILL_MAX,
	                    SKILL_MEDICAL = SKILL_EXPERT,
	                    SKILL_ANATOMY = SKILL_EXPERT,
	                    SKILL_CHEMISTRY = SKILL_EXPERT)
	skill_points = 30

/datum/job/submap/voxship_vox/breacher
	title = "Breacher"
	total_positions = 2
	supervisors = "The Apex and the arkship"
	info = "The Empire has been reborn, even if Auralis died, but their word is still in you.	\
	You have become part of the Ecclesiarchy of the Empire, and while the inquisitors are supervising the brothers and protecting the very young empire with their bodies, you must help them and protect them from the vile heretics who dared to threaten his life.	\
	Obey your Inquisitor, protect him and report everything to him, because you are his claws, his eyes and ears."
	whitelisted_species = list(SPECIES_VOX)
	min_skill = list(	SKILL_HAULING     = SKILL_BASIC,
						SKILL_EVA         = SKILL_EXPERT,
						SKILL_SCIENCE     = SKILL_BASIC,
						SKILL_PILOT       = SKILL_ADEPT,
						SKILL_COMBAT      = SKILL_ADEPT,
						SKILL_WEAPONS     = SKILL_ADEPT)


	max_skill = list(   SKILL_BUREAUCRACY = SKILL_MAX,
	                    SKILL_FINANCE = SKILL_MAX,
	                    SKILL_EVA = SKILL_MAX,
	                    SKILL_MECH = SKILL_MAX,
	                    SKILL_PILOT = SKILL_MAX,
	                    SKILL_HAULING = SKILL_MAX,
	                    SKILL_COMPUTER = SKILL_MAX,
	                    SKILL_BOTANY = SKILL_MAX,
	                    SKILL_COOKING = SKILL_MAX,
	                    SKILL_COMBAT = SKILL_MAX,
	                    SKILL_WEAPONS = SKILL_MAX,
	                    SKILL_FORENSICS = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL = SKILL_EXPERT,
	                    SKILL_ATMOS = SKILL_EXPERT,
	                    SKILL_ENGINES = SKILL_EXPERT,
	                    SKILL_DEVICES = SKILL_MAX,
	                    SKILL_SCIENCE = SKILL_MAX,
	                    SKILL_MEDICAL = SKILL_EXPERT,
	                    SKILL_ANATOMY = SKILL_EXPERT,
	                    SKILL_CHEMISTRY = SKILL_EXPERT)
	skill_points = 18

/datum/job/submap/voxship_vox/inq
	title = "Inquisitor"
	total_positions = 1
	supervisors = "The Apex and the arkship"
	info = "You are the face of the Apexes, that you carry the will of the great Auralis with your claws.	\
	The Empire has returned, but not all voxes have believed again, and therefore the apexes have chosen you, so that you, destroying your enemies, return the spark of the Creators to all your brothers in their hearts.	\
	Help the Quill of this vessel by spiritually instructing its crew members and do not allow heretics of dust-swallows learn the secrets of Auralis."
	whitelisted_species = list(SPECIES_VOX)
	min_skill = list(	SKILL_HAULING     = SKILL_BASIC,
						SKILL_EVA         = SKILL_EXPERT,
						SKILL_SCIENCE     = SKILL_BASIC,
						SKILL_PILOT       = SKILL_ADEPT,
						SKILL_COMBAT      = SKILL_ADEPT,
						SKILL_WEAPONS     = SKILL_ADEPT)


	max_skill = list(   SKILL_BUREAUCRACY = SKILL_MAX,
	                    SKILL_FINANCE = SKILL_MAX,
	                    SKILL_EVA = SKILL_MAX,
	                    SKILL_MECH = SKILL_MAX,
	                    SKILL_PILOT = SKILL_MAX,
	                    SKILL_HAULING = SKILL_MAX,
	                    SKILL_COMPUTER = SKILL_MAX,
	                    SKILL_BOTANY = SKILL_MAX,
	                    SKILL_COOKING = SKILL_MAX,
	                    SKILL_COMBAT = SKILL_MAX,
	                    SKILL_WEAPONS = SKILL_MAX,
	                    SKILL_FORENSICS = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL = SKILL_EXPERT,
	                    SKILL_ATMOS = SKILL_EXPERT,
	                    SKILL_ENGINES = SKILL_EXPERT,
	                    SKILL_DEVICES = SKILL_MAX,
	                    SKILL_SCIENCE = SKILL_MAX,
	                    SKILL_MEDICAL = SKILL_EXPERT,
	                    SKILL_ANATOMY = SKILL_EXPERT,
	                    SKILL_CHEMISTRY = SKILL_EXPERT)
	skill_points = 30
#define VOXSHIP_OUTFIT_JOB_NAME(job_name) ("Vox Asteroid Base - Job - " + job_name)
/decl/hierarchy/outfit/job/voxship
	hierarchy_type = /decl/hierarchy/outfit/job/voxship
	l_ear = null
	r_ear = null

/decl/hierarchy/outfit/job/voxship/crew
	name = VOXSHIP_OUTFIT_JOB_NAME("Shard Expeditionary")
	uniform = /obj/item/clothing/under/vox/vox_robes
	r_pocket = /obj/item/device/radio
	shoes = /obj/item/clothing/shoes/magboots/vox
	l_ear = /obj/item/device/radio/headset
	belt = /obj/item/storage/belt/utility/full
	id_types = list(/obj/item/card/id/voxship)
	l_pocket = /obj/item/crowbar/prybar
	r_hand = /obj/item/tank/nitrogen_emergency_double
	l_hand = /obj/item/voxbox

/decl/hierarchy/outfit/job/voxship/crew/captain
	name = VOXSHIP_OUTFIT_JOB_NAME("Shard Quill")
	uniform = /obj/item/clothing/under/vox/vox_robes
	r_pocket = /obj/item/tank/nitrogen_emergency_double
	shoes = /obj/item/clothing/shoes/magboots/vox
	l_ear = /obj/item/device/radio/headset
	belt = /obj/item/storage/belt/utility/full
	id_types = list(/obj/item/card/id/voxship_captain)
	l_pocket = /obj/item/crowbar/prybar
	r_hand = /obj/item/device/radio
	l_hand = /obj/item/voxbox

/obj/item/voxbox
	name = "Vox Combat Kit"
	desc = "A secure box containing weapons."
	icon = 'icons/bos/obj/ascent_doodads.dmi'
	icon_state = "box" //temp

/obj/item/voxbox/attack_self(mob/living/user)
	var/list/options = list()
	options["Medic"] = list(/obj/item/gun/energy/darkmatter,/obj/item/gun/launcher/alien/slugsling,/obj/item/storage/firstaid/combat,/obj/item/clothing/glasses/hud/health,/obj/item/device/scanner/health,/obj/item/storage/firstaid/adv)
	options["Enforcer"] = list(/obj/item/gun/energy/darkmatter,/obj/item/gun/energy/plasmastun/vox,/obj/item/gun/launcher/alien/spikethrower,/obj/item/storage/firstaid/adv,/obj/item/gun/projectile/automatic/machine_pistol,/obj/item/ammo_magazine/machine_pistol,/obj/item/ammo_magazine/machine_pistol,/obj/item/ammo_magazine/machine_pistol)
	options["Controller"] = list(/obj/item/gun/energy/darkmatter,/obj/item/gun/projectile/shotgun/pump,/obj/item/storage/box/ammo/shotgunammo/full,/obj/item/storage/box/ammo/shotgunammo/buckshot/full,/obj/item/gun/energy/sonic,/obj/item/storage/firstaid/adv)
	options["Stolen Marine Gear"] = list(/obj/item/gun/projectile/automatic/bullpup_rifle,/obj/item/storage/firstaid/adv,/obj/item/ammo_magazine/mil_rifle,/obj/item/ammo_magazine/mil_rifle,/obj/item/ammo_magazine/mil_rifle,/obj/item/gun/energy/gun,/obj/item/storage/box/fragshells)
	options["Sniper"] = list(/obj/item/gun/energy/darkmatter,/obj/item/gun/energy/sniperrifle/vox,/obj/item/storage/firstaid/adv,/obj/item/device/binoculars,/obj/item/gun/projectile/revolver,/obj/item/ammo_magazine/speedloader/magnum,/obj/item/ammo_magazine/speedloader/magnum,/obj/item/ammo_magazine/speedloader/magnum)
//	options["Melee"] = list(/obj/item/gun/energy/darkmatter,/obj/item/melee/energy/sword,/obj/item/reagent_containers/hypospray/autoinjector/stim,/obj/item/reagent_containers/hypospray/autoinjector/stim,/obj/item/reagent_containers/hypospray/autoinjector/kompoton,/obj/item/storage/firstaid/adv)
	var/choice = input(user,"What type of equipment?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/gun/))
				to_chat(user, "You have chosen \the [AM]. Make sure to keep it safe.")
		qdel(src)

/obj/item/gun/energy/plasmastun/vox
	desc = "The modified Hephaestus Industries MA21 Selkie is a weapon that uses a laser pulse to ionise the local atmosphere, creating a disorienting pulse of plasma and deafening shockwave as the wave expands. Without a local atmosphere to ionize, however, it becomes a very expensive paperweight. This model seems heavily modified, to use the power of biofuel."
	self_recharge = 1
	recharge_time = 20

/obj/item/gun/energy/sniperrifle/vox
	desc = "This is a modified Hephaestus Industries Baleful. The cell has been replaced by a vox variant, allowing it to self-charge. Sadly, this makes it lose its function to knock people out. It's a designated marksman rifle capable of shooting powerful ionized beams."
	self_recharge = 1
	recharge_time = 80
	projectile_type = /obj/item/projectile/beam/snipervox

/obj/effect/submap_landmark/spawnpoint/voxship_crew
	name = "Shard Acolyte"

/obj/effect/submap_landmark/spawnpoint/voxship_crew/doc
	name = "Shard Biotechnician"

/obj/effect/submap_landmark/spawnpoint/voxship_crew/engineer
	name = "Shard Technician"

/obj/effect/submap_landmark/spawnpoint/voxship_crew/quill
	name = "Shard Quill"

/obj/effect/submap_landmark/spawnpoint/voxship_crew/inq
	name = "Inquisitor"

/obj/effect/submap_landmark/spawnpoint/voxship_crew/breacher
	name = "Breacher"

#undef VOXSHIP_OUTFIT_JOB_NAME
