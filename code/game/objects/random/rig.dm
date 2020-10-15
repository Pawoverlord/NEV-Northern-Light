/obj/spawner/rig
	name = "random rig suit"
	icon_state = "armor-blue"
	has_postspawn = FALSE
	tags_to_spawn = list(SPAWN_RING)

/obj/spawner/rig/damaged
	name = "random damaged rig suit"
	icon_state = "armor-red"
	has_postspawn = TRUE

/obj/spawner/rig/post_spawn(list/spawns)
	for (var/obj/item/weapon/rig/module in spawns)
		var/cnd = rand(40,80)
		module.lose_modules(cnd)
		module.misconfigure(cnd)
		module.sabotage_tank()

/obj/spawner/rig/low_chance
	name = "low chance random rig suit"
	icon_state = "armor-blue-low"
	spawn_nothing_percentage = 75

/obj/spawner/rig/damaged/low_chance
	name = "low chance random rig suit"
	icon_state = "armor-red-low"
	spawn_nothing_percentage = 75

/obj/spawner/rig_module
	name = "random hardsuit module"
	icon_state = "box-orange"
	tags_to_spawn = list(SPAWN_RING_MODULE)

/obj/spawner/rig_module/low_chance
	name = "low chance random hardsuit module"
	icon_state = "box-orange-low"
	spawn_nothing_percentage = 75

/obj/spawner/rig_module/rare
	name = "random rare hardsuit module"
	icon_state = "box-red"
	tags_to_spawn = list(SPAWN_RING_MODULE)
	restricted_tags = list(SPAWN_RING_MODULE_COMMON)

/obj/spawner/rig_module/rare/low_chance
	name = "low chance random rare hardsuit module"
	icon_state = "box-red-low"
<<<<<<< HEAD
	spawn_nothing_percentage = 75
=======
	spawn_nothing_percentage = 75
>>>>>>> f05e272... Merge pull request #193 from Trilbyspaceclone/beep_boop
