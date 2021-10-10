/datum/gear/cane
	display_name = "cane"
	path = /obj/item/weapon/cane
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/surgeon,/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz,/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)

/datum/gear/dice
	display_name = "dice pack"
	path = /obj/item/weapon/storage/pill_bottle/dice
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/surgeon,/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz,/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)


/datum/gear/dice/nerd
	display_name = "dice pack (gaming)"
	path = /obj/item/weapon/storage/pill_bottle/dice_nerd
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/surgeon,/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz,/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)


/datum/gear/cards
	display_name = "deck of cards"
	path = /obj/item/weapon/deck/cards
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/surgeon,/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz,/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)

/datum/gear/tarot
	display_name = "deck of tarot cards"
	path = /obj/item/weapon/deck/tarot
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/surgeon,/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz,/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)


/datum/gear/holder
	display_name = "card holder"
	path = /obj/item/weapon/deck/holder
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/surgeon,/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz,/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)


/*/datum/gear/cardemon_pack
	display_name = "Cardemon booster pack"
	path = /obj/item/weapon/pack/cardemon

/datum/gear/spaceball_pack
	display_name = "Spaceball booster pack"
	path = /obj/item/weapon/pack/spaceball*/

/datum/gear/flask
	display_name = "flask"
	path = /obj/item/weapon/reagent_containers/food/drinks/flask/barflask
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/surgeon,/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz,/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)

/datum/gear/flask/New()
	..()
	gear_tweaks += new/datum/gear_tweak/reagents(lunchables_ethanol_reagents())

/datum/gear/vacflask
	display_name = "vacuum-flask"
	path = /obj/item/weapon/reagent_containers/food/drinks/flask/vacuumflask
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/surgeon,/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz,/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)

/datum/gear/vacflask/New()
	..()
	gear_tweaks += new/datum/gear_tweak/reagents(lunchables_drink_reagents())

/datum/gear/coffeecup
	display_name = "coffee cup"
	path = /obj/item/weapon/reagent_containers/food/drinks/coffeecup
	flags = GEAR_HAS_TYPE_SELECTION
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/surgeon,/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz,/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)

/datum/gear/boot_knife
	display_name = "boot knife"
	path = /obj/item/weapon/material/kitchen/utensil/knife/boot
	cost = 3
	allowed_roles = list(/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz)

/datum/gear/lunchbox
	display_name = "lunchbox"
	description = "A little lunchbox."
	cost = 2
	path = /obj/item/weapon/storage/lunchbox
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/surgeon,/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz,/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)

/datum/gear/lunchbox/New()
	..()
	var/list/lunchboxes = list()
	for(var/lunchbox_type in typesof(/obj/item/weapon/storage/lunchbox))
		var/obj/item/weapon/storage/lunchbox/lunchbox = lunchbox_type
		if(!initial(lunchbox.filled))
			lunchboxes[initial(lunchbox.name)] = lunchbox_type
	gear_tweaks += new/datum/gear_tweak/path(lunchboxes)
	gear_tweaks += new/datum/gear_tweak/contents(lunchables_lunches(), lunchables_snacks(), lunchables_drinks())

/datum/gear/towel
	display_name = "towel"
	path = /obj/item/weapon/towel
	flags = GEAR_HAS_COLOR_SELECTION
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/surgeon,/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz,/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)

/datum/gear/plush_toy
	display_name = "plush toy"
	description = "A plush toy."
	path = /obj/item/toy/plushie
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/surgeon,/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz,/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)

/datum/gear/plush_toy/New()
	..()
	var/plushes = list()
	plushes["diona nymph plush"] = /obj/item/toy/plushie/nymph
	plushes["mouse plush"] = /obj/item/toy/plushie/mouse
	plushes["kitten plush"] = /obj/item/toy/plushie/kitten
	plushes["lizard plush"] = /obj/item/toy/plushie/lizard
	plushes["spider plush"] = /obj/item/toy/plushie/spider
	plushes["farwa plush"] = /obj/item/toy/plushie/farwa
	gear_tweaks += new /datum/gear_tweak/path(plushes)

/*/datum/gear/workvisa
	display_name = "work visa"
	description = "A work visa issued by the Sol Central Government for the purpose of work."
	path = /obj/item/weapon/paper/workvisa*/

/datum/gear/mirror/
	display_name = "handheld mirror"
	sort_category = "Cosmetics"
	path = /obj/item/weapon/mirror
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/surgeon,/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz,/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)

/*/datum/gear/lipstick
	display_name = "lipstick selection"
	path = /obj/item/weapon/lipstick
	flags = GEAR_HAS_TYPE_SELECTION*/

/datum/gear/comb
	display_name = "plastic comb"
	path = /obj/item/weapon/haircomb
	flags = GEAR_HAS_COLOR_SELECTION

/*/datum/gear/mask
	display_name = "sterile mask"
	path = /obj/item/clothing/mask/surgical
	cost = 2*/

/datum/gear/smokingpipe
	display_name = "pipe, smoking"
	path = /obj/item/clothing/mask/smokable/pipe
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/surgeon,/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz,/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)

/datum/gear/cornpipe
	display_name = "pipe, corn"
	path = /obj/item/clothing/mask/smokable/pipe/cobpipe
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/surgeon,/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz,/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)

/datum/gear/matchbook
	display_name = "matchbook"
	path = /obj/item/weapon/storage/box/matches
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/surgeon,/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz,/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)

/datum/gear/lighter
	display_name = "cheap lighter"
	path = /obj/item/weapon/flame/lighter
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/surgeon,/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz,/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)

/datum/gear/zippo
	display_name = "zippo"
	path = /obj/item/weapon/flame/lighter/zippo
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/surgeon,/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz,/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)

/*/datum/gear/ashtray
	display_name = "ashtray, plastic"
	path = /obj/item/weapon/material/ashtray/plastic*/

/datum/gear/cigars
	display_name = "fancy cigar case"
	path = /obj/item/weapon/storage/fancy/cigar
	cost = 2
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/surgeon,/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz,/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)

/datum/gear/cigar
	display_name = "fancy cigar"
	path = /obj/item/clothing/mask/smokable/cigarette/cigar
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/surgeon,/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz,/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)

/datum/gear/cigar/New()
	..()
	var/cigar_type = list()
	cigar_type["premium"] = /obj/item/clothing/mask/smokable/cigarette/cigar
	cigar_type["Cohiba Robusto"] = /obj/item/clothing/mask/smokable/cigarette/cigar/cohiba
	gear_tweaks += new/datum/gear_tweak/path(cigar_type)

/datum/gear/ecig
	display_name = "electronic cigarette"
	path = /obj/item/clothing/mask/smokable/ecig/util
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/surgeon,/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz,/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)

/datum/gear/ecig/deluxe
	display_name = "electronic cigarette, deluxe"
	path = /obj/item/clothing/mask/smokable/ecig/deluxe
	cost = 2
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/surgeon,/datum/job/emt,/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz,/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)
