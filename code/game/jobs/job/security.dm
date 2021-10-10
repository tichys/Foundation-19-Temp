/datum/job/hos
	title = "Head of Security"
	head_position = 1
	department = "Security"
	department_flag = SEC|COM

	total_positions = 1
	spawn_positions = 1
	supervisors = "the captain"
	selection_color = "#8e2929"
	req_admin_notify = 1
	economic_modifier = 10
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimal_player_age = 14
	outfit_type = /decl/hierarchy/outfit/job/security/hos

/datum/job/hos/equip(var/mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(H)

/datum/job/ltofficerhcz
	has_email = TRUE
	title = "Second Guard Commander"
	department = "Security"
	selection_color = "#8e2929"
	department_flag = SEC
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Guard Commander"
	duties = "<big><b>As the Second Guard Commander, you're the right hand of the Guard Commander.</span>"
	economic_modifier = 4
	minimal_player_age = 10
	ideal_character_age = 45
	alt_titles = null
//	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/ltofficer
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/o2
	)
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(10), rand(10), rand(15,20)) // Str, Dex, Int.
		H.add_skills(rand(80,100), rand(80,100), rand(15,30), rand(5,10)) // Melee, Ranged, Medical, Engineering.

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3, access_mtflvl4, access_sciencelvl1, access_sciencelvl2, access_sciencelvl3, access_sciencelvl4, access_adminlvl1, access_adminlvl2, access_adminlvl3, access_adminlvl4)
	minimal_access = list()

/datum/job/ncoofficerhcz
	has_email = TRUE
	title = "Security Guard"
	department = "Security"
	selection_color = "#601c1c"
	department_flag = SEC
	total_positions = 10
	spawn_positions = 10
	duties = "<big><b>As the Guard you have more access than a Junior Guard, but do not control them. You are to guard tests and SCP's. If in doubt, ask your Guard Commander. You also have the duty of guarding the D-Class Cell Blocks."
	supervisors = "the Zone Commander"
	economic_modifier = 4
	minimal_player_age = 5
	ideal_character_age = 25
	alt_titles = null
//	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/ncoofficer
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/e4,
		/datum/mil_rank/security/e5,
		/datum/mil_rank/security/e6
	)
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(10), rand(10), rand(15,20)) // Str, Dex, Int.
		H.add_skills(rand(60,80), rand(60,80), rand(15,30), rand(5,10)) // Melee, Ranged, Medical, Engineering.

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3, access_sciencelvl1, access_sciencelvl2, access_sciencelvl3, access_adminlvl1, access_adminlvl2, access_adminlvl3)
	minimal_access = list()

/datum/job/enlistedofficerlcz
	has_email = TRUE
	title = "Junior Guard"
	department = "Security"
	selection_color = "#601c1c"
	department_flag = SEC
	total_positions = 6
	spawn_positions = 6
	duties = "<big><b>As the Junior Guard you have minimal access. You are to guard tests, SCP's and provide support. If in doubt, ask your Guard Commander. You also have the duty of guarding the D-Class Cell Blocks."
	supervisors = "the Guard Commander"
	economic_modifier = 4
//	minimal_player_age = 0
	ideal_character_age = 25
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/enlistedofficerlcz
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/e1,
		/datum/mil_rank/security/e2
	)
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(10), rand(10), rand(15,20)) // Str, Dex, Int.
		H.add_skills(rand(50,80), rand(50,80), rand(15,30), rand(5,10)) // Melee, Ranged, Medical, Engineering.

	access = list(access_mtflvl1, access_sciencelvl1, access_adminlvl1, access_adminlvl2)
	minimal_access = list()
