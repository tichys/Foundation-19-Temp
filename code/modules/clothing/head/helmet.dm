/obj/item/clothing/head/helmet
	name = "helmet"
	desc = "Reinforced headgear. Protects the head from impacts."
	icon_state = "helmet"
	item_state_slots = list(
		slot_l_hand_str = "helmet",
		slot_r_hand_str = "helmet",
		)
	valid_accessory_slots = list(ACCESSORY_SLOT_HELM_C)
	restricted_accessory_slots = list(ACCESSORY_SLOT_HELM_C)
	item_flags = ITEM_FLAG_THICKMATERIAL
	body_parts_covered = HEAD
	armor = list(melee = 50, bullet = 83, laser = 50,energy = 25, bomb = 30, bio = 0, rad = 0)
	flags_inv = HIDEEARS|BLOCKHEADHAIR
	cold_protection = HEAD
	min_cold_protection_temperature = HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = HEAD
	max_heat_protection_temperature = HELMET_MAX_HEAT_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.7
	w_class = ITEM_SIZE_NORMAL
	//var/vision_flags = 0
	//var/darkness_view = 0//Base human is 2
	var/prescription = 0
	var/toggleable = 0
	var/off_state = "degoggles"
	var/active = 1
	var/activation_sound = 'sound/items/goggles_charge.ogg'
	var/obj/screen/overlay = null
	var/obj/item/clothing/head/helmet/hud/hud = null	// lol
	var/electric = 0 //if the glasses should be disrupted by EMP

/obj/item/clothing/head/helmet/New()
	..()
	if(ispath(hud))
		hud = new hud(src)

/obj/item/clothing/head/helmet/Destroy()
	qdel(hud)
	hud = null
	. = ..()

/obj/item/clothing/head/helmet/needs_vision_update()
	return ..() || overlay || vision_flags || see_invisible || darkness_view

/obj/item/clothing/head/helmet/emp_act(severity)
	if(electric)
		if(istype(src.loc, /mob/living/carbon/human))
			var/mob/living/carbon/human/M = src.loc
			to_chat(M, "<span class='danger'>Your [name] malfunction[gender != PLURAL ? "s":""], blinding you!</span>")
			if(M.glasses == src)
				M.eye_blind = 2
				M.eye_blurry = 4
				// Don't cure being nearsighted
				if(!(M.disabilities & NEARSIGHTED))
					M.disabilities |= NEARSIGHTED
					spawn(100)
						M.disabilities &= ~NEARSIGHTED
		if(toggleable)
			if(active)
				active = 0

/obj/item/clothing/head/helmet/attack_self(mob/user)
	if(toggleable && !user.incapacitated())
		if(active)
			active = 0
			icon_state = off_state
			user.update_inv_glasses()
			flash_protection = FLASH_PROTECTION_NONE
			tint = TINT_NONE
			to_chat(usr, "You deactivate the optical matrix on the [src].")
		else
			active = 1
			icon_state = initial(icon_state)
			user.update_inv_glasses()
			if(activation_sound)
				sound_to(usr, activation_sound)

			flash_protection = initial(flash_protection)
			tint = initial(tint)
			to_chat(usr, "You activate the optical matrix on the [src].")
		user.update_action_buttons()

/obj/item/clothing/head/helmet/nt
	name = "\improper guard helmet"
	desc = "A helmet with 'GUARD' printed on the back in red lettering."
	icon_state = "helmet_nt"

/obj/item/clothing/head/helmet/pcrc
	name = "\improper Guard helmet"
	desc = "A helmet with 'GUARD' printed on the back in cyan lettering."
	icon_state = "helmet_pcrc"

/obj/item/clothing/head/helmet/nt/guard
	starting_accessories = list(/obj/item/clothing/accessory/armor/helmcover/nt)

/obj/item/clothing/head/helmet/tactical
	name = "tactical helmet"
	desc = "A tan helmet made from advanced ceramic. Comfortable and robust."
	icon_state = "helmet_tac"
	armor = list(melee = 50, bullet = 80, laser = 60, energy = 45, bomb = 30, bio = 0, rad = 0)
	siemens_coefficient = 0.6

/obj/item/clothing/head/helmet/bgtactical
	name = "guard helmet"
	desc = "A tactical riot helmet, commonly seen on security personnel."
	icon_state = "obj-riot"
	item_state = "helmet_riot2"
	armor = list(melee = 50, bullet = 60, laser = 20, energy = 25, bomb = 30, bio = 0, rad = 0)
	siemens_coefficient = 0.6

/obj/item/clothing/head/helmet/merc
	name = "combat helmet"
	desc = "A heavily reinforced helmet painted with red markings. Feels like it could take a lot of punishment."
	icon_state = "helmet_merc"
	armor = list(melee = 70, bullet = 75, laser = 70, energy = 35, bomb = 30, bio = 0, rad = 0)
	siemens_coefficient = 0.5

/obj/item/clothing/head/helmet/riot
	name = "riot helmet"
	desc = "It's a helmet specifically designed to protect against close range attacks."
	icon_state = "helmet_riot"
	valid_accessory_slots = null
	body_parts_covered = HEAD|FACE|EYES //face shield
	armor = list(melee = 82, bullet = 15, laser = 5, energy = 5, bomb = 5, bio = 2, rad = 0)
	siemens_coefficient = 0.7
	action_button_name = "Toggle Visor"

/obj/item/clothing/head/helmet/riot/attack_self(mob/user as mob)
	if(src.icon_state == initial(icon_state))
		src.icon_state = "[icon_state]_up"
		to_chat(user, "You raise the visor on the [src].")
	else
		src.icon_state = initial(icon_state)
		to_chat(user, "You lower the visor on the [src].")
	update_clothing_icon()

/obj/item/clothing/head/helmet/ablative
	name = "ablative helmet"
	desc = "A helmet made from advanced materials which protects against concentrated energy weapons."
	icon_state = "helmet_reflect"
	valid_accessory_slots = null
	armor = list(melee = 15, bullet = 5, laser = 82, energy = 50, bomb = 5, bio = 2, rad = 0)
	siemens_coefficient = 0

/obj/item/clothing/head/helmet/ballistic
	name = "ballistic helmet"
	desc = "A helmet with reinforced plating to protect against ballistic projectiles."
	icon_state = "helmet_bulletproof"
	valid_accessory_slots = null
	armor = list(melee = 5, bullet = 85, laser = 30, energy = 5, bomb = 30, bio = 2, rad = 0)
	siemens_coefficient = 0.7

/obj/item/clothing/head/helmet/swat
	name = "\improper Foundation Security Helmet"
	desc = "They're often used by highly trained SCPF SD Troopers."
	icon_state = "helmet_merc"
	armor = list(melee = 80, bullet = 80, laser = 50,energy = 25, bomb = 50, bio = 10, rad = 0)
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.5

/obj/item/clothing/head/helmet/chaos
	name = "tactical hazmat helmet"
	desc = "An armored hazmat helmet. Has a distinct orange hue."
	icon_state = "tac_helmet"
	armor = list(melee = 80, bullet = 83, laser = 50,energy = 25, bomb = 50, bio = 100, rad = 60)
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	item_flags = ITEM_FLAG_THICKMATERIAL|ITEM_FLAG_AIRTIGHT
	body_parts_covered = HEAD|FACE|EYES
	siemens_coefficient = 0.5
	permeability_coefficient = 0
	
/obj/item/clothing/head/helmet/mtfheavy
	name = "combined heavy assault helmet"
	desc = "A quad-layered heavy composite helmet with titanium strut supports made solely so it doesn't crush one's heavy with the weight."
	icon_state = "mtf-heavy-helmet"
	armor = list(melee = 110, bullet = 110, laser = 90, energy = 90, bomb = 120, bio = 100, rad = 80)
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	item_flags = ITEM_FLAG_THICKMATERIAL|ITEM_FLAG_AIRTIGHT
	body_parts_covered = HEAD|FACE|EYES
	siemens_coefficient = 0.5
	permeability_coefficient = 0
	
/obj/item/clothing/head/helmet/mtftactical
	name = "tactical composite helmet"
	desc = "An armored composite helmet with night vision goggles attached."
	icon_state = "mtf-tactical-helmetON"
	armor = list(melee = 80, bullet = 83, laser = 50,energy = 25, bomb = 50, bio = 100, rad = 60)
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	item_flags = ITEM_FLAG_THICKMATERIAL|ITEM_FLAG_AIRTIGHT
	body_parts_covered = HEAD|FACE|EYES
	action_button_name = "Toggle Goggles"
	toggleable = 1
	electric = 1
	see_invisible = SEE_INVISIBLE_NOLIGHTING
	darkness_view = 7
	off_state = "mtf-tactical-helmetOFF"
	
/obj/item/clothing/head/helmet/mtftactical/New()
	..()
	overlay = GLOB.global_hud.nvg

/obj/item/clothing/head/helmet/thunderdome
	name = "\improper Thunderdome helmet"
	desc = "<i>'Let the battle commence!'</i>"
	icon_state = "thunderdome"
	valid_accessory_slots = null
	armor = list(melee = 80, bullet = 60, laser = 50,energy = 10, bomb = 25, bio = 10, rad = 0)
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 1

/obj/item/clothing/head/helmet/gladiator
	name = "gladiator helmet"
	desc = "Ave, Imperator, morituri te salutant."
	icon_state = "gladiator"
	valid_accessory_slots = null
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|BLOCKHAIR
	body_parts_covered = HEAD|FACE
	siemens_coefficient = 1

/*
/obj/item/clothing/head/helmet/tactical
	name = "tactical helmet"
	desc = "An armored helmet capable of being fitted with a multitude of attachments."
	icon_state = "swathelm"
	valid_accessory_slots = null
	sprite_sheets = list(
		SPECIES_TAJARA = 'icons/mob/species/tajaran/helmet.dmi',
		SPECIES_UNATHI = 'icons/mob/species/unathi/helmet.dmi'
		)

	armor = list(melee = 62, bullet = 80, laser = 50,energy = 35, bomb = 10, bio = 2, rad = 0)
	flags_inv = HIDEEARS
	siemens_coefficient = 0.7
*/

/obj/item/clothing/head/helmet/augment
	name = "Augment Array"
	desc = "A helmet with optical and cranial augments coupled to it."
	icon_state = "v62"
	valid_accessory_slots = null
	armor = list(melee = 80, bullet = 70, laser = 50,energy = 25, bomb = 50, bio = 10, rad = 0)
	flags_inv = HIDEEARS|HIDEEYES
	body_parts_covered = HEAD|EYES|BLOCKHEADHAIR
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.5

//Non-hardsuit ERT helmets.
//Commander
/obj/item/clothing/head/helmet/ert
	name = "asset protection command helmet"
	desc = "An in-atmosphere helmet worn by many corporate and private asset protection forces. Has blue highlights."
	icon_state = "erthelmet_cmd"
	valid_accessory_slots = null
	item_state_slots = list(
		slot_l_hand_str = "syndicate-helm-green",
		slot_r_hand_str = "syndicate-helm-green",
		)
	armor = list(melee = 62, bullet = 70, laser = 50,energy = 35, bomb = 10, bio = 2, rad = 0)

//Security
/obj/item/clothing/head/helmet/ert/security
	name = "asset protection security helmet"
	desc = "An in-atmosphere helmet worn by many corporate and private asset protection forces. Has red highlights."
	icon_state = "erthelmet_sec"

//Engineer
/obj/item/clothing/head/helmet/ert/engineer
	name = "asset protection engineering helmet"
	desc = "An in-atmosphere helmet worn by many corporate and private asset protection forces. Has orange highlights."
	icon_state = "erthelmet_eng"

//Medical
/obj/item/clothing/head/helmet/ert/medical
	name = "asset protection medical helmet"
	desc = "An in-atmosphere helmet worn by many corporate and private asset protection forces. Has red and white highlights."
	icon_state = "erthelmet_med"

/obj/item/clothing/head/helmet/tactical/mirania
	name = "bundeforz tactical helmet"
	desc = "A light grey helmet made from advanced ceramic. Comfortable and robust."
	icon_state = "m_helmet"

/obj/item/clothing/head/helmet/scp/security
	name = "\improper guard helmet"
	desc = "A helmet with 'GUARD' printed on the back lettering."
	icon_state = "guard-helm"
	body_parts_covered = HEAD|FACE|EYES //face shield
	armor = list(melee = 50, bullet = 70, laser = 50,energy = 25, bomb = 30, bio = 10, rad = 10)
	flags_inv = HIDEEARS
	action_button_name = "Toggle Visor"

/obj/item/clothing/head/helmet/scp/security/attack_self(mob/user as mob)
	if(src.icon_state == initial(icon_state))
		src.icon_state = "[icon_state]_up"
		to_chat(user, "You raise the visor on the [src].")
	else
		src.icon_state = initial(icon_state)
		to_chat(user, "You lower the visor on the [src].")
	update_clothing_icon()

/obj/item/clothing/head/helmet/scp/chaos
	name = "\improper chaos helmet"
	desc = "A helmet with 'CHAOS INSURGENCY' symbol printed on the back lettering."
	icon_state = "chaos-helm"
	body_parts_covered = HEAD //face shield
	armor = list(melee = 50, bullet = 83, laser = 50,energy = 25, bomb = 40, bio = 10, rad = 10)
	flags_inv = HIDEEARS

/obj/item/clothing/head/helmet/scp/donor
	name = "\improper tactical helmet"
	desc = "Тактический шлем из композитных сплавов, оснащённый тепловизором, встроенной радиостанцией и устройством GPS, с выводом данных на интерфейс шлема. К сожалению из-за отсутствия питания единственная функция этого шлема - защищать голову владельца."
	icon_state = "donor_sec"
	body_parts_covered = HEAD|FACE|EYES //face shield
	armor = list(melee = 50, bullet = 70, laser = 50,energy = 25, bomb = 30, bio = 10, rad = 10)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|BLOCKHAIR

/obj/item/clothing/head/helmet/scp/donor2
	name = "\improper security heavy helmet"
	desc = "Тяжёлый шлем специального назначения Рысь-Т, покрашен в чёрный цвет."
	icon_state = "donate_sec"
	body_parts_covered = HEAD|FACE|EYES //face shield
	armor = list(melee = 50, bullet = 70, laser = 50,energy = 25, bomb = 30, bio = 10, rad = 10)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|BLOCKHAIR

/obj/item/clothing/head/helmet/scp/donor3
	name = "\improper security heavy helmet"
	desc = "баллистический шлем нового поколения, разработан японской компанией 'Devtac'. На задней бронепластине напечатано имя владельца."
	icon_state = "don_sec"
	body_parts_covered = HEAD|FACE|EYES //face shield
	armor = list(melee = 50, bullet = 60, laser = 50,energy = 25, bomb = 30, bio = 10, rad = 10)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|BLOCKHAIR
