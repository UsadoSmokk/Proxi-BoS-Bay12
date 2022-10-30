/datum/gear/eyes/science/New()
	allowed_roles = RESEARCH_ROLES | EXPLORATION_ROLES
	..()

/datum/gear/eyes/security
	allowed_roles = SECURITY_ROLES

/datum/gear/eyes/medical
	allowed_roles = MEDICAL_ROLES

/datum/gear/eyes/meson
	allowed_roles = ENGINEERING_ROLES | RESEARCH_ROLES | EXPLORATION_ROLES

/datum/gear/eyes/material
	allowed_roles = ENGINEERING_ROLES | RESEARCH_ROLES | EXPLORATION_ROLES
