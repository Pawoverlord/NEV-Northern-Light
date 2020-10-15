/obj/spawner/tool
	name = "random tool"
	icon_state = "tool-grey"
	spawn_nothing_percentage = 15
	tags_to_spawn = list(SPAWN_TOOL, SPAWN_DIVICE, SPAWN_GLOVES_INSULATED, SPAWN_JETPACK, SPAWN_ITEM_UTILITY)
<<<<<<< HEAD
	restricted_tags = list(SPAWN_SURGERY_TOOL, SPAWN_KNIFE, SPAWN_JUNK)
=======
	restricted_tags = list(SPAWN_SURGERY_TOOL, SPAWN_KNIFE)
>>>>>>> f05e272... Merge pull request #193 from Trilbyspaceclone/beep_boop

//Randomly spawned tools will often be in imperfect condition if they've been left lying out
/obj/spawner/tool/post_spawn(list/spawns)
	if (isturf(loc))
		for (var/obj/O in spawns)
			if (!istype(O, /obj/spawner) && prob(20))
				O.make_old()

/obj/spawner/tool/low_chance
	name = "low chance random tool"
	icon_state = "tool-grey-low"
	spawn_nothing_percentage = 60

/obj/spawner/tool/advanced
	name = "random advanced tool"
	icon_state = "tool-orange"
	tags_to_spawn = list(SPAWN_ADVANCED_TOOL)

/obj/spawner/tool/advanced/low_chance
	name = "low chance advanced tool"
	icon_state = "tool-orange-low"
	spawn_nothing_percentage = 60

/obj/spawner/toolbox
	name = "random toolbox"
	icon_state = "box-green"
	tags_to_spawn = list(SPAWN_TOOLBOX)

/obj/spawner/toolbox/low_chance
	name = "low chance random toolbox"
	icon_state = "box-green-low"
	spawn_nothing_percentage = 60

/obj/spawner/tool/advanced/onestar
	name = "random onestar tool"
	allow_blacklist = TRUE
	tags_to_spawn = list(SPAWN_OS_TOOL)

/obj/spawner/tool/advanced/onestar/low_chance
	icon_state = "tool-orange-low"
	spawn_nothing_percentage = 60
