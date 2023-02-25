/* CARDS
 * ========
 */

/obj/item/card/id/solship
	desc = "An identification card issued to SolGov crewmembers."
	icon_state = "base"
	color = "#666666"
	access = list(access_away_solship_main)

/obj/item/card/id/solship/engineer
	desc = "An identification card issued to SolGov crewmembers."
	access = list(access_away_solship_main, access_away_solship_eng, access_engine_equip)

/obj/item/card/id/solship/medic
	desc = "An identification card issued to SolGov crewmembers."
	access = list(access_away_solship_main, access_away_solship_med)

/obj/item/card/id/solship/captain
	desc = "An identification card issued to SolGov crewmembers."
	access = list(access_away_solship_main, access_away_solship_eng, access_away_solship_med, access_away_solship_captain)

/* RADIOHEADS
 * ========
 */

/obj/item/device/radio/headset/gunship
	name = "gunship team radio headset"
	desc = "The headset of the gunship team member."
	icon_state = "com_headset"
	item_state = "headset"
	ks2type = /obj/item/device/encryptionkey/gunship

/obj/item/device/encryptionkey/gunship
	name = "\improper gunship radio encryption key"
	icon_state = "cargo_cypherkey"
	channels = list("Response Team" = 1)

/* CLOTHING
 * ========
 */

/obj/item/clothing/under/solgov/utility/fleet/command/captain
	accessories = list(/obj/item/clothing/accessory/solgov/department/command/fleet, /obj/item/clothing/accessory/solgov/specialty/pilot, /obj/item/clothing/accessory/solgov/rank/fleet/officer/o4, /obj/item/clothing/accessory/solgov/fleet_patch/fifth)

/obj/item/clothing/under/solgov/utility/fleet/engineering/away_solship
	accessories = list(/obj/item/clothing/accessory/solgov/department/engineering/fleet, /obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e5, /obj/item/clothing/accessory/solgov/fleet_patch/fifth)

/obj/item/clothing/under/solgov/utility/fleet/medical/away_solship
	accessories = list(/obj/item/clothing/accessory/solgov/department/medical/fleet, /obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e5, /obj/item/clothing/accessory/solgov/fleet_patch/fifth)

/obj/item/clothing/under/solgov/utility/fleet/away_solship
	accessories = list(/obj/item/clothing/accessory/solgov/department/command/fleet, /obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e4, /obj/item/clothing/accessory/solgov/fleet_patch/fifth)

/* MISC
 * ========
 */
/obj/item/paper/solinf
	name = "note"
	info = {"
<center><solcrest>
<b>Центральное командование Пограничного Фронта ЛК-31 ЦПСС</b></center>
<hr>
Ваше судно уже два месяца не приносит никаких результатов, поэтому с сожалением сообщаем, что платы в консолях Texas-Red были реквизированы для более приоритетных объектов.
Мы живём в трудное время, надеемся на понимание.
Челнок всё ещё способен подлетать к объектам, так что приятных полётов!
<hr>
<i>This paper has been stamped with the stamp of SCG LC-31 Central Command.</i>
"}

/obj/item/rig/military/sol
	name = "SCG hardsuit control module"
	desc = "A sleek and dangerous hardsuit for active combat."
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_AP,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SMALL,
		rad = ARMOR_RAD_MINOR
		)

/decl/hierarchy/outfit/sol_military
	name = "SOL military solder"

	uniform = /obj/item/clothing/under/solgov/utility/fleet/away_solship
	head = /obj/item/clothing/head/solgov/utility/fleet
	shoes = /obj/item/clothing/shoes/dutyboots
	l_ear = /obj/item/device/radio/headset/gunship
	back = /obj/item/rig/military/sol

	id_types= list(/obj/item/card/id/solship)
	id_slot = slot_wear_id

	id_pda_assignment = "Soldier"

/obj/effect/landmark/corpse/sol_military
	name = "SOL military solder"
	corpse_outfits = list(/decl/hierarchy/outfit/sol_military)
	spawn_flags = CORPSE_SPAWNER_NO_RANDOMIZATION