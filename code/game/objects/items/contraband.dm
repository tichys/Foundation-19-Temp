//Let's get some REAL contraband stuff in here. Because come on, getting brigged for LIPSTICK is no fun.

//Illicit drugs~
/obj/item/weapon/storage/pill_bottle/happy
	name = "bottle of Happy pills"
	desc = "Highly illegal drug. When you want to see the rainbow."

/obj/item/weapon/storage/pill_bottle/happy/New()
	..()
	new /obj/item/weapon/reagent_containers/pill/happy( src )
	new /obj/item/weapon/reagent_containers/pill/happy( src )
	new /obj/item/weapon/reagent_containers/pill/happy( src )
	new /obj/item/weapon/reagent_containers/pill/happy( src )
	new /obj/item/weapon/reagent_containers/pill/happy( src )
	new /obj/item/weapon/reagent_containers/pill/happy( src )
	new /obj/item/weapon/reagent_containers/pill/happy( src )

/obj/item/weapon/storage/pill_bottle/scp500
	name = "bottle of pills"
	desc = "SCP-500. Supposedly cures everything."

/obj/item/weapon/storage/pill_bottle/scp500/New()
	..()
	new /obj/item/weapon/reagent_containers/pill/scp500( src )
	new /obj/item/weapon/reagent_containers/pill/scp500( src )
	new /obj/item/weapon/reagent_containers/pill/scp500( src )
	new /obj/item/weapon/reagent_containers/pill/scp500( src )
	new /obj/item/weapon/reagent_containers/pill/scp500( src )
	new /obj/item/weapon/reagent_containers/pill/scp500( src )
	new /obj/item/weapon/reagent_containers/pill/scp500( src )

/obj/item/weapon/storage/pill_bottle/amnesticsa
	name = "bottle of pills"
	icon_state = "pill_canister_a"
	desc = "Class A Amnestics."

/obj/item/weapon/storage/pill_bottle/amnesticsa/New()
	..()
	new /obj/item/weapon/reagent_containers/pill/amnestics/classa( src )
	new /obj/item/weapon/reagent_containers/pill/amnestics/classa( src )
	new /obj/item/weapon/reagent_containers/pill/amnestics/classa( src )
	new /obj/item/weapon/reagent_containers/pill/amnestics/classa( src )
	new /obj/item/weapon/reagent_containers/pill/amnestics/classa( src )
	new /obj/item/weapon/reagent_containers/pill/amnestics/classa( src )
	new /obj/item/weapon/reagent_containers/pill/amnestics/classa( src )

/obj/item/weapon/storage/pill_bottle/amnesticsb
	name = "bottle of pills"
	icon_state = "pill_canister_b"
	desc = "Class B Amnestics."

/obj/item/weapon/storage/pill_bottle/amnesticsb/New()
	..()
	new /obj/item/weapon/reagent_containers/pill/amnestics/classb( src )
	new /obj/item/weapon/reagent_containers/pill/amnestics/classb( src )
	new /obj/item/weapon/reagent_containers/pill/amnestics/classb( src )
	new /obj/item/weapon/reagent_containers/pill/amnestics/classb( src )
	new /obj/item/weapon/reagent_containers/pill/amnestics/classb( src )
	new /obj/item/weapon/reagent_containers/pill/amnestics/classb( src )
	new /obj/item/weapon/reagent_containers/pill/amnestics/classb( src )

/obj/item/weapon/storage/pill_bottle/amnesticsc
	name = "bottle of pills"
	icon_state = "pill_canister_c"
	desc = "Class C Amnestics."

/obj/item/weapon/storage/pill_bottle/amnesticsc/New()
	..()
	new /obj/item/weapon/reagent_containers/pill/amnestics/classc( src )
	new /obj/item/weapon/reagent_containers/pill/amnestics/classc( src )
	new /obj/item/weapon/reagent_containers/pill/amnestics/classc( src )
	new /obj/item/weapon/reagent_containers/pill/amnestics/classc( src )
	new /obj/item/weapon/reagent_containers/pill/amnestics/classc( src )
	new /obj/item/weapon/reagent_containers/pill/amnestics/classc( src )
	new /obj/item/weapon/reagent_containers/pill/amnestics/classc( src )

/obj/item/weapon/storage/pill_bottle/zoom
	name = "bottle of Zoom pills"
	desc = "Highly illegal drug. Trade brain for speed."

/obj/item/weapon/storage/pill_bottle/zoom/New()
	..()
	new /obj/item/weapon/reagent_containers/pill/zoom( src )
	new /obj/item/weapon/reagent_containers/pill/zoom( src )
	new /obj/item/weapon/reagent_containers/pill/zoom( src )
	new /obj/item/weapon/reagent_containers/pill/zoom( src )
	new /obj/item/weapon/reagent_containers/pill/zoom( src )
	new /obj/item/weapon/reagent_containers/pill/zoom( src )
	new /obj/item/weapon/reagent_containers/pill/zoom( src )

/obj/item/weapon/reagent_containers/glass/beaker/vial/random
	atom_flags = 0
	var/list/random_reagent_list = list(list(/datum/reagent/water = 15) = 1, list(/datum/reagent/space_cleaner = 15) = 1)

/obj/item/weapon/reagent_containers/glass/beaker/vial/random/toxin
	random_reagent_list = list(
		list(/datum/reagent/mindbreaker = 10, /datum/reagent/space_drugs = 20) = 3,
		list(/datum/reagent/toxin/carpotoxin = 15)                             = 2,
		list(/datum/reagent/impedrezene = 15)                                  = 2)

/obj/item/weapon/reagent_containers/glass/beaker/vial/random/New()
	..()
	if(is_open_container())
		atom_flags ^= ATOM_FLAG_OPEN_CONTAINER

	var/list/picked_reagents = pickweight(random_reagent_list)
	for(var/reagent in picked_reagents)
		reagents.add_reagent(reagent, picked_reagents[reagent])

	var/list/names = new
	for(var/datum/reagent/R in reagents.reagent_list)
		names += R.name

	desc = "Contains [english_list(names)]."
	update_icon()
