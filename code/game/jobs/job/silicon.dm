/datum/job/ai
	title = "AI"
	department_flag = MSC

	total_positions = 1 // Not used for AI, see is_position_available below and modules/mob/living/silicon/ai/latejoin.dm. note from tiberius: this broke ai thanks misha for telling me
	spawn_positions = 1
	selection_color = "#3f823f"
	supervisors = "your laws"
	req_admin_notify = 1
	minimal_player_age = 14
	account_allowed = 0
	economic_modifier = 0
	outfit_type = /decl/hierarchy/outfit/job/silicon/ai
	loadout_allowed = FALSE
	hud_icon = "hudblank"

/datum/job/ai/equip(var/mob/living/carbon/human/H)
	if(!H)	return 0
	return 1

/datum/job/ai/is_position_available()
	return (empty_playable_ai_cores.len != 0)
duties = "<big><b>As the AI, you and your AIC colleagues are tasked with following your laws to the best of your ability. Your security clearance level is Level-4. You are a Superintelligent Class-V Sapient AIC. Sapient AICs possess advanced awareness of the relationships between themselves and other intelligent entities; often possesses 'human-like' attributes. Superintelligent AICs are able to perform tasks which humans are not able to perform, or at a level which humans are not capable of. Godspeed. </span>"
