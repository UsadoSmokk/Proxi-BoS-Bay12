// Who the fuck are those one, then? ~Laxesh
/decl/hierarchy/outfit/job/solship
	name = OUTFIT_JOB_NAME("Shitcode sucker the I")
/decl/hierarchy/outfit/job/solship/crew
	name = OUTFIT_JOB_NAME("Shitcode sucker the II")

/decl/hierarchy/outfit/job/solship/crew/fleet
	name = OUTFIT_JOB_NAME("Solship Fleet Outfit")
	hierarchy_type = /decl/hierarchy/outfit/job/solship/crew/fleet
	uniform = /obj/item/clothing/under/lordan/utility/fleet
	head = /obj/item/clothing/head/beret/lordan/fleet
	shoes = /obj/item/clothing/shoes/lordan
	l_ear = /obj/item/device/radio/headset/gunship
	id_types = list(/obj/item/card/id/solship)

/decl/hierarchy/outfit/job/solship/crew/fleet/troop
	name = OUTFIT_JOB_NAME("Solship Marine Fleet Outfit")
	uniform = /obj/item/clothing/under/lordan/utility/green/lss_ship_marine
	head = /obj/item/clothing/head/beret/lordan/orbital

/decl/hierarchy/outfit/job/solship/crew/fleet/medic
	name = OUTFIT_JOB_NAME("Solship Med Fleet Outfit")
	uniform = /obj/item/clothing/under/lordan/utility/fleet/lss_ship_medick
	id_types = list(/obj/item/card/id/solship/medic)

/decl/hierarchy/outfit/job/solship/crew/fleet/engineer
	name = OUTFIT_JOB_NAME("Solship Engi Fleet Outfit")
	uniform = /obj/item/clothing/under/lordan/utility/fleet/lss_ship_engineer
	id_types = list(/obj/item/card/id/solship/engineer)

/decl/hierarchy/outfit/job/solship/crew/fleet/captain
	name = OUTFIT_JOB_NAME("Solship Cap Fleet Outfit")
	uniform = /obj/item/clothing/under/lordan/utility/fleet/command
	suit = /obj/item/clothing/suit/storage/toggle/lordan/service/fleet/officer/lss_ship_lead
	head = /obj/item/clothing/head/lordan/fleet
	id_types = list(/obj/item/card/id/solship/captain)
/*
/decl/hierarchy/mil_uniform/scgfleet
	name = "Master scg fleet outfit"
	hierarchy_type = /decl/hierarchy/mil_uniform/fleet
	branches = list(/datum/mil_branch/fleet)
	pt_under = /obj/item/clothing/under/solgov/pt/fleet
	pt_shoes = /obj/item/clothing/shoes/black
	utility_under = /obj/item/clothing/under/solgov/utility/fleet
	utility_shoes = /obj/item/clothing/shoes/dutyboots
	utility_hat = /obj/item/clothing/head/solgov/utility/fleet
	utility_extra = list(/obj/item/clothing/head/beret/solgov/fleet, /obj/item/clothing/head/ushanka/solgov/fleet, /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,/obj/item/clothing/head/soft/solgov/fleet)
	service_under = /obj/item/clothing/under/solgov/service/fleet
	service_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt
	service_over = null
	service_shoes = /obj/item/clothing/shoes/dress
	service_hat = /obj/item/clothing/head/solgov/dress/fleet/garrison
	dress_under = /obj/item/clothing/under/solgov/service/fleet
	dress_skirt = /obj/item/clothing/under/solgov/service/fleet/skirt
	dress_over = /obj/item/clothing/suit/dress/solgov/fleet/sailor
	dress_shoes = /obj/item/clothing/shoes/dress
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet
	dress_gloves = /obj/item/clothing/gloves/white
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress)

/decl/hierarchy/mil_uniform/fleet/com //Can only be officers
	name = "Fleet command"
	departments = COM

	utility_under = /obj/item/clothing/under/solgov/utility/fleet/command
	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/cmd,
						 )

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/officer

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/com/seniorofficer
	name = "Fleet senior command"
	min_rank = 15

	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/command
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/command

/decl/hierarchy/mil_uniform/fleet/com/flagofficer
	name = "Fleet flag command"
	min_rank = 17

	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/flag
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/flag

/decl/hierarchy/mil_uniform/fleet/eng
	name = "Fleet engineering"
	departments = ENG

	utility_under = /obj/item/clothing/under/solgov/utility/fleet/engineering
	utility_extra = list(/obj/item/clothing/head/beret/solgov/fleet/engineering,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/eng,
						 )

/decl/hierarchy/mil_uniform/fleet/eng/noncom
	name = "Fleet engineering NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet

/decl/hierarchy/mil_uniform/fleet/eng/snco
	name = "Fleet engineering SNCO"
	min_rank = 7

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/snco

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/snco
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress)

/decl/hierarchy/mil_uniform/fleet/eng/officer
	name = "Fleet engineering CO"
	min_rank = 11

	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/eng)
	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/officer

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/eng/officer/com //Can only be officers
	name = "Fleet engineering command"
	departments = ENG|COM

/decl/hierarchy/mil_uniform/fleet/eng/officer/com/seniorofficer
	name = "Fleet engineering senior command"
	min_rank = 15

	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/command
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/command

/decl/hierarchy/mil_uniform/fleet/eng/officer/com/flagofficer
	name = "Fleet engineering flag command"
	min_rank = 17

	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/flag
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/flag

/decl/hierarchy/mil_uniform/fleet/sec
	name = "Fleet security"
	departments = SEC

	utility_extra = list(/obj/item/clothing/head/beret/solgov/fleet/security,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/sec,
						 /obj/item/clothing/under/solgov/utility/fleet/security,)
	utility_under = /obj/item/clothing/under/solgov/utility/fleet/combat/security

/decl/hierarchy/mil_uniform/fleet/sec/noncom
	name = "Fleet security NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet

/decl/hierarchy/mil_uniform/fleet/sec/snco
	name = "Fleet security SNCO"
	min_rank = 7

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/snco

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/snco
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress)

/decl/hierarchy/mil_uniform/fleet/sec/officer
	name = "Fleet security CO"
	min_rank = 11

	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/sec)
	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/officer

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/sec/officer/com //Can only be officers
	name = "Fleet security command"
	departments = SEC|COM

/decl/hierarchy/mil_uniform/fleet/sec/officer/com/seniorofficer
	name = "Fleet security senior command"
	min_rank = 15

	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/command
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/command

/decl/hierarchy/mil_uniform/fleet/sec/officer/com/flagofficer
	name = "Fleet security flag command"
	min_rank = 17

	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/flag
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/flag

/decl/hierarchy/mil_uniform/fleet/med
	name = "Fleet medical"
	departments = MED

	utility_extra = list(/obj/item/clothing/head/beret/solgov/fleet/medical,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/under/solgov/utility/fleet/combat/medical,
						 /obj/item/clothing/gloves/thick/duty/solgov/med,
						 )
	utility_under = /obj/item/clothing/under/solgov/utility/fleet/medical

/decl/hierarchy/mil_uniform/fleet/med/noncom
	name = "Fleet medical NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet

/decl/hierarchy/mil_uniform/fleet/med/snco
	name = "Fleet medical SNCO"
	min_rank = 7

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/snco

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/snco
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress)

/decl/hierarchy/mil_uniform/fleet/med/officer
	name = "Fleet medical CO"
	min_rank = 11

	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/med)
	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/officer

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/med/officer/com //Can only be officers
	name = "Fleet medical command"
	departments = MED|COM

/decl/hierarchy/mil_uniform/fleet/med/officer/com/seniorofficer
	name = "Fleet medical senior command"
	min_rank = 15

	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/command
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/command

/decl/hierarchy/mil_uniform/fleet/med/officer/com/flagofficer
	name = "Fleet medical flag command"
	min_rank = 17

	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/flag
	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/flag

/decl/hierarchy/mil_uniform/fleet/sup
	name = "Fleet supply"
	departments = SUP

	utility_under = /obj/item/clothing/under/solgov/utility/fleet/supply
	utility_extra = list(/obj/item/clothing/head/beret/solgov/fleet/supply,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/sup,)

/decl/hierarchy/mil_uniform/fleet/sup/noncom
	name = "Fleet supply NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet

/decl/hierarchy/mil_uniform/fleet/sup/snco
	name = "Fleet supply SNCO"
	min_rank = 7

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/snco

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/snco
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress)

/decl/hierarchy/mil_uniform/fleet/sup/officer
	name = "Fleet supply CO"
	min_rank = 11

	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/sup)
	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/officer

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/sup/seniorofficer
	name = "Fleet supply senior command"
	min_rank = 15

	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command, /obj/item/clothing/head/beret/solgov/fleet/command, /obj/item/clothing/head/ushanka/solgov/fleet, /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet, /obj/item/clothing/head/soft/solgov/fleet)
	utility_under = /obj/item/clothing/under/solgov/utility/fleet/command

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/command


	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/command
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/sup/flagofficer
	name = "Fleet spply flag command"
	min_rank = 17

	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command, /obj/item/clothing/head/beret/solgov/fleet/command, /obj/item/clothing/head/ushanka/solgov/fleet, /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet, /obj/item/clothing/head/soft/solgov/fleet)
	utility_under = /obj/item/clothing/under/solgov/utility/fleet/command

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/flag

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/flag
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/srv
	name = "Fleet service"
	departments = SRV

	utility_under = /obj/item/clothing/under/solgov/utility/fleet/service
	utility_extra = list(/obj/item/clothing/head/beret/solgov/fleet/service,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/svc,
						 )

/decl/hierarchy/mil_uniform/fleet/srv/noncom
	name = "Fleet service NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet

/decl/hierarchy/mil_uniform/fleet/srv/snco
	name = "Fleet service SNCO"
	min_rank = 7

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/snco

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/snco
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress)

/decl/hierarchy/mil_uniform/fleet/srv/officer
	name = "Fleet service CO"
	min_rank = 11

	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/svc)
	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/officer

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/exp
	name = "Fleet exploration"
	departments = EXP

	utility_under = /obj/item/clothing/under/solgov/utility/fleet/exploration
	utility_extra = list(/obj/item/clothing/head/beret/solgov/fleet/exploration,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/under/solgov/utility/fleet/combat/exploration,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/exp,
						 )

/decl/hierarchy/mil_uniform/fleet/exp/noncom
	name = "Fleet exploration NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet

/decl/hierarchy/mil_uniform/fleet/exp/snco
	name = "Fleet exploration SNCO"
	min_rank = 7

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/snco

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/snco
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress)

/decl/hierarchy/mil_uniform/fleet/exp/officer
	name = "Fleet exploration CO"
	min_rank = 11

	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet,
						 /obj/item/clothing/gloves/thick/duty/solgov/exp)
	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/officer

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/spt
	name = "Fleet command support"
	departments = SPT

	utility_under = /obj/item/clothing/under/solgov/utility/fleet/command

/decl/hierarchy/mil_uniform/fleet/spt/noncom
	name = "Fleet support NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet

/decl/hierarchy/mil_uniform/fleet/spt/snco
	name = "Fleet support SNCO"
	min_rank = 7

	service_hat = /obj/item/clothing/head/solgov/dress/fleet
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/snco

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/snco
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress)

/decl/hierarchy/mil_uniform/fleet/spt/officer
	name = "Fleet command support CO"
	min_rank = 11

	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command, /obj/item/clothing/head/beret/solgov/fleet/command, /obj/item/clothing/head/ushanka/solgov/fleet, /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet, /obj/item/clothing/head/soft/solgov/fleet)
	utility_under = /obj/item/clothing/under/solgov/utility/fleet/command

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/officer

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/officer
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/spt/seniorofficer
	name = "Fleet senior command support"
	min_rank = 15

	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet)
	utility_under = /obj/item/clothing/under/solgov/utility/fleet/command

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/command


	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/command
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress/command)

/decl/hierarchy/mil_uniform/fleet/spt/flagofficer
	name = "Fleet flag command support"
	min_rank = 17

	utility_extra = list(/obj/item/clothing/under/solgov/utility/fleet/officer/command,
						 /obj/item/clothing/head/beret/solgov/fleet/command,
						 /obj/item/clothing/head/ushanka/solgov/fleet,
						 /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/fleet,
						 /obj/item/clothing/head/soft/solgov/fleet)
	utility_under = /obj/item/clothing/under/solgov/utility/fleet/command

	service_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/fleet/flag

	dress_over = /obj/item/clothing/suit/storage/solgov/dress/fleet/flag
	dress_hat = /obj/item/clothing/head/solgov/dress/fleet/command
	dress_extra = list(/obj/item/clothing/head/beret/solgov/fleet/dress/command)
*/
