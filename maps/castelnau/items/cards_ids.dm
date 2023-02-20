/obj/item/card/id/castelnau
	name = "identification card"
	desc = "An identification card issued to personnel of the RMV Castelnau."
	icon_state = "base"
	item_state = "id"
	job_access_type = /datum/job/assistant

/obj/item/card/id/castelnau/silver
	desc = "A silver identification card belonging to the Coordinator of RVV Castelnau."
	job_access_type = /datum/job/hop
	detail_color = COLOR_COMMAND_BLUE

/obj/item/card/id/castelnau/gold
	desc = "A golden identification card belonging to the Captain of RVV Castelnau."
	job_access_type = /datum/job/captain
	color = "#d4c780"
	extra_details = list("goldstripe")

///obj/item/card/id/castelnau/crew/adjutant
//	desc = "An identification card belonging to the Second Officer of MOTV Castelnau."
//	job_access_type = /datum/job/adjutant
//	detail_color = COLOR_COMMAND_BLUE

/obj/item/card/id/castelnau/crewman
	desc = "An identification card issued to Crewman of the RMV Castelnau."
	job_access_type = /datum/job/assistant

/obj/item/card/id/castelnau/crew
	desc = "An identification card issued to crewmembers of the RMV Castelnau."
	job_access_type = /datum/job/assistant

/obj/item/card/id/castelnau/crew/pilot
	job_access_type = /datum/job/pilot

/obj/item/card/id/castelnau/crew/medical
	desc = "An identification card issued to medical crewmembers of the RMV Castelnau."
	job_access_type = /datum/job/doctor

/obj/item/card/id/castelnau/crew/medical/senior
	job_access_type = /datum/job/senior_doctor

/obj/item/card/id/castelnau/crew/security
	desc = "An identification card issued to security personnel aboard the RMV Castelnau."
	job_access_type = /datum/job/officer

/obj/item/card/id/castelnau/crew/security/warden
	job_access_type = /datum/job/warden

/obj/item/card/id/castelnau/crew/security/specialist
	job_access_type = /datum/job/specialist

/obj/item/card/id/castelnau/crew/engineering
	job_access_type = /datum/job/engineer

/obj/item/card/id/castelnau/crew/engineering/rev
	job_access_type = /datum/job/scientist

/obj/item/card/id/castelnau/crew/engineering/senior
	job_access_type = /datum/job/senior_engineer

/obj/item/card/id/castelnau/crew/supply
	job_access_type = /datum/job/cargotech

/obj/item/card/id/castelnau/crew/supply/mining
	job_access_type = /datum/job/mining

/obj/item/card/id/castelnau/crew/service/janitor
	job_access_type = /datum/job/janitor

/obj/item/card/id/castelnau/crew/service/chef
	job_access_type = /datum/job/chef

/obj/item/card/id/castelnau/crew/service/bartender
	job_access_type = /datum/job/bartender

//ftu

/obj/item/card/id/castelnau/crew/cheapskate
	job_access_type = /datum/job/ftumerchant
	desc = "An identification card issued to crewmembers of the ITV Cheapskate."

/obj/item/card/id/castelnau/crew/cheapskate/sec
	job_access_type = /datum/job/ftumerchant_security

/obj/item/card/id/castelnau/crew/cheapskate/chief
	job_access_type = /datum/job/chiefmerchant