/datum/gear/head
	sort_category = "Hats and Headwear"
	slot = slot_head
	category = /datum/gear/head

/*/datum/gear/head/beret
	display_name = "beret, colour select"
	path = /obj/item/clothing/head/beret/plaincolor
	flags = GEAR_HAS_COLOR_SELECTION
	description = "A simple, solid color beret. This one has no emblems or insignia on it."*/

/datum/gear/head/whitentberet
	display_name = "beret, SCP security"
	path = /obj/item/clothing/head/beret/guard
	allowed_roles = list(/datum/job/hos,/datum/job/ltofficerhcz,/datum/job/ncoofficerhcz)

/datum/gear/head/bandana
	display_name = "bandana selection"
	path = /obj/item/clothing

/datum/gear/head/bandana/New()
	..()
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(typesof(/obj/item/clothing/mask/bandana) + typesof(/obj/item/clothing/head/bandana))

/datum/gear/head/bow
	display_name = "hair bow, colour select"
	path = /obj/item/clothing/head/hairflower/bow
	flags = GEAR_HAS_COLOR_SELECTION
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/assistant)

/datum/gear/head/cap
	display_name = "cap selection"
	path = /obj/item/clothing/head
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain)

/datum/gear/head/cap/New()
	..()
	var/caps = list()
	caps["black cap"] = /obj/item/clothing/head/soft/black
	caps["blue cap"] = /obj/item/clothing/head/soft/blue
	caps["flat cap"] = /obj/item/clothing/head/flatcap
	caps["green cap"] = /obj/item/clothing/head/soft/green
	caps["grey cap"] = /obj/item/clothing/head/soft/grey
	caps["orange cap"] = /obj/item/clothing/head/soft/orange
	caps["red cap"] = /obj/item/clothing/head/soft/red
	caps["yellow cap"] = /obj/item/clothing/head/soft/yellow
	caps["major bill's shipping cap"] = /obj/item/clothing/head/soft/mbill
	gear_tweaks += new/datum/gear_tweak/path(caps)

/datum/gear/head/hairflower
	display_name = "hair flower pin"
	path = /obj/item/clothing/head/hairflower
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain,/datum/job/assistant)

/datum/gear/head/hairflower/New()
	..()
	var/pins = list()
	pins["blue pin"] = /obj/item/clothing/head/hairflower/blue
	pins["pink pin"] = /obj/item/clothing/head/hairflower/pink
	pins["red pin"] = /obj/item/clothing/head/hairflower
	pins["yellow pin"] = /obj/item/clothing/head/hairflower/yellow
	gear_tweaks += new/datum/gear_tweak/path(pins)

/*/datum/gear/head/hardhat
	display_name = "hardhat selection"
	path = /obj/item/clothing/head/hardhat
	cost = 2

/datum/gear/head/hardhat/New()
	..()
	var/hardhats = list()
	hardhats["blue hardhat"] = /obj/item/clothing/head/hardhat/dblue
	hardhats["orange hardhat"] = /obj/item/clothing/head/hardhat/orange
	hardhats["red hardhat"] = /obj/item/clothing/head/hardhat/red
	hardhats["yellow hardhat"] = /obj/item/clothing/head/hardhat
	gear_tweaks += new/datum/gear_tweak/path(hardhats)*/

/datum/gear/head/formalhat
	display_name = "formal hat selection"
	path = /obj/item/clothing/head
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/archivist,/datum/job/o5rep,/datum/job/bartender,/datum/job/psychiatrist,/datum/job/captain)

/datum/gear/head/formalhat/New()
	..()
	var/formalhats = list()
	formalhats["boatsman hat"] = /obj/item/clothing/head/boaterhat
	formalhats["bowler hat"] = /obj/item/clothing/head/bowler
	formalhats["fedora"] = /obj/item/clothing/head/fedora //m'lady
	formalhats["feather trilby"] = /obj/item/clothing/head/feathertrilby
	formalhats["fez"] = /obj/item/clothing/head/fez
	formalhats["top hat"] = /obj/item/clothing/head/that
	formalhats["fedora, brown"] = /obj/item/clothing/head/det
	formalhats["fedora, grey"] = /obj/item/clothing/head/det/grey
	gear_tweaks += new/datum/gear_tweak/path(formalhats)

/datum/gear/head/informalhat
	display_name = "informal hat selection"
	path = /obj/item/clothing/head
	allowed_roles = list(/datum/job/seniorscientist,/datum/job/scientist,/datum/job/rd,/datum/job/bartender,/datum/job/psychiatrist)

/datum/gear/head/informalhat/New()
	..()
	var/informalhats = list()
	informalhats["cowboy hat"] = /obj/item/clothing/head/cowboy_hat
	informalhats["ushanka"] = /obj/item/clothing/head/ushanka
	informalhats["SPECIAL ushanka, black"] = /obj/item/clothing/head/ushanka/tcc
	gear_tweaks += new/datum/gear_tweak/path(informalhats)

/*/datum/gear/head/hijab
	display_name = "hijab, colour select"
	path = /obj/item/clothing/head/hijab
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/kippa
	display_name = "kippa, colour select"
	path = /obj/item/clothing/head/kippa
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/turban
	display_name = "turban, colour select"
	path = /obj/item/clothing/head/turban
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/taqiyah
	display_name = "taqiyah, colour select"
	path = /obj/item/clothing/head/taqiyah
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/surgical
	display_name = "standard surgical caps"
	path = /obj/item/clothing/head/surgery
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/head/surgical/custom
	display_name = "surgical cap, colour select"
	flags = GEAR_HAS_COLOR_SELECTION*/

/datum/gear/head/welding
	display_name = "welding mask selection"
	path = /obj/item/clothing/head/welding
	allowed_roles = list(/datum/job/eng,/datum/job/juneng,/datum/job/conteng,/datum/job/chief_engineer)

/datum/gear/head/welding/New()
	..()
	var/welding_masks = list()
	welding_masks += /obj/item/clothing/head/welding/demon
	welding_masks += /obj/item/clothing/head/welding/engie
	welding_masks += /obj/item/clothing/head/welding/fancy
	welding_masks += /obj/item/clothing/head/welding/knight
	welding_masks += /obj/item/clothing/head/welding/carp
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(welding_masks)

/datum/gear/head/tankccap
	display_name = "padded cap"
	path = /obj/item/clothing/head/tank
