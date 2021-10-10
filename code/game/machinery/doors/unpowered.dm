/obj/machinery/door/unpowered
	autoclose = 0
	var/locked = 0

/obj/machinery/door/unpowered/Bumped(atom/AM)
	if(src.locked)
		return
	..()
	return

/obj/machinery/door/unpowered/attackby(obj/item/I as obj, mob/user as mob)
	if(istype(I, /obj/item/weapon/melee/energy/blade))	return
	if(src.locked)	return
	..()
	return

/obj/machinery/door/unpowered/emag_act()
	return -1

/obj/machinery/door/unpowered/shuttle
	icon = 'icons/turf/shuttle.dmi'
	name = "door"
	icon_state = "door1"
	opacity = 1
	density = 1

/obj/machinery/door/unpowered/special
	name = "door"
	icon = 'icons/obj/doors/material_doors.dmi'
	icon_state = "woodnew"
	var/icon_base

	icon_base = "woodnew"


/obj/machinery/door/unpowered/special/update_icon()
	if(density)
		icon_state = "[icon_base]"
	else
		icon_state = "[icon_base]open"
	return

/obj/machinery/door/unpowered/special/do_animate(animation)
	switch(animation)
		if("opening")
			flick("[icon_base]opening", src)
		if("closing")
			flick("[icon_base]closing", src)
	return

/obj/machinery/door/unpowered/special/fancy
	name = "door"
	icon = 'icons/obj/doors/material_doors.dmi'
	icon_state = "fancy"
	icon_base = "fancy"

/obj/machinery/door/unpowered/special/off
	name = "door"
	icon = 'icons/obj/doors/material_doors.dmi'
	icon_state = "office"
	icon_base = "office"

/obj/machinery/door/unpowered/special/int
	name = "door"
	icon = 'icons/obj/doors/material_doors.dmi'
	icon_state = "int"
	icon_base = "int"

/obj/machinery/door/unpowered/special/room
	name = "door"
	icon = 'icons/obj/doors/material_doors.dmi'
	icon_state = "room"
	icon_base = "room"

/obj/machinery/door/unpowered/special/metal
	name = "door"
	icon = 'icons/obj/doors/material_doors.dmi'
	icon_state = "metal2"
	icon_base = "metal2"

/obj/machinery/door/unpowered/special/metal2
	name = "door"
	icon = 'icons/obj/doors/material_doors.dmi'
	icon_state = "bars"
	icon_base = "bars"