// This is part of a training tutorial for Nestor to show our skills and learn new tricks.

/obj/item/weapon/pet_rock
	name = "Pet Rock"
	desc = "A simple rock to serve as your pet, better remember to feed it."
	icon = 'icons/obj/mining.dmi'
	icon_state = "ore2"

/obj/item/weapon/pet_rock_gold
	name = "Golden Rock"
	desc = "A simple rock to serve as your pet, except this one is made of pure gold."
	icon = 'icons/obj/mining.dmi'
	icon_state = "ore_gold"

//This is more of a decal effect.

/obj/item/weapon/pet_rock_sand
	name = "Grainy Rock"
	desc = "A simple rock to serve as your pet, this one seems to be very fragile. Be careful!"
	icon = 'icons/obj/mining.dmi'
	icon_state = "ore_glass"
	anchored = TRUE

//Taken from /obj/effect/decal/cleanable/ash

/obj/item/weapon/pet_rock_sand/attack_hand(mob/user as mob)
	to_chat(user, SPAN_NOTICE("[src] sifts through your fingers."))
	qdel(src)