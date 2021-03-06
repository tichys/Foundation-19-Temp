/*************************************
* Stealthy and Inconspicuous Weapons *
*************************************/
/datum/uplink_item/item/stealthy_weapons
	category = /datum/uplink_category/stealthy_weapons

/datum/uplink_item/item/stealthy_weapons/soap
	name = "Subversive Soap"
	item_cost = 1
	path = /obj/item/weapon/soap/syndie

/datum/uplink_item/item/stealthy_weapons/cigarette_kit
	name = "Cigarette Kit"
	item_cost = 8
	path = /obj/item/weapon/storage/box/syndie_kit/cigarette

/datum/uplink_item/item/stealthy_weapons/concealed_cane
	name = "Concealed Cane Sword"
	item_cost = 8
	path = /obj/item/weapon/cane/concealed

/datum/uplink_item/item/stealthy_weapons/random_toxin
	name = "Random Toxin - Beaker"
	item_cost = 8
	path = /obj/item/weapon/storage/box/syndie_kit/toxin

/datum/uplink_item/item/stealthy_weapons/detomatix
	name = "Detomatix PDA Cartridge"
	item_cost = 16
	path = /obj/item/weapon/cartridge/syndicate

/datum/uplink_item/item/stealthy_weapons/sleepy
	name = "Sleepy Pen"
	item_cost = 20
	path = /obj/item/weapon/pen/reagent/sleepy

/datum/uplink_item/item/stealthy_weapons/syringegun
	name = "Disguised Syringe Gun"
	item_cost = 10
	path = /obj/item/weapon/storage/box/syndie_kit/syringegun


/datum/uplink_item/item/stealthy_weapons/brazil_karate
	name = "Brazil Karate"
	desc = "An autoinjector with implant, which will teach you arts of Brazil Karate. It can be useful for melee combat. You can only know one art!"
	item_cost = 42
	antag_costs = list(MODE_MERCENARY = 26)
	path = /obj/item/weapon/nanite_injector/brazil_karate

/datum/uplink_item/item/stealthy_weapons/cqc
	name = "CQC"
	desc = "A nanite injector, which will teach you arts of CQC. It is useful for 1v1 combat or unexpected assaults. You can only know one art!"
	item_cost = 46
	path = /obj/item/weapon/nanite_injector/cqc
	antag_roles = list(MODE_MERCENARY)

/datum/uplink_item/item/stealthy_weapons/ai_container
	name = "Eagle Brawl Style"
	desc = "A nanite injector, which will teach you arts of Eagle Brawl Style, movement-based martial art, capable of rapid dashes and rolls. You can only know one art!"
	item_cost = 52
	path = /obj/item/weapon/nanite_injector/eaglestyle
	antag_roles = list(MODE_MERCENARY)