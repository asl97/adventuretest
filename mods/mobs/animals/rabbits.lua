mobs:register_mob("mobs:rabbit", {
	type = "animal",
	hp_min = 8,
	hp_max = 10,
	collisionbox = {-0.2, -0.01, -0.2, 0.2, 0.3, 0.2},
	textures = {"mobs_rabbit.png"},
	visual = "mesh",
	mesh = "rabbit.x",
	visual_size = {x=0.5,y=0.5},
	makes_footstep_sound = false,
	walk_velocity = 2,
	armor = 200,
	drops = {
		{name = "mobs:meat_raw",
		chance = 1,
		min = 0,
		max = 1,},
	},
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	sounds = {
	},
	animation = {
		speed_normal = 30,
		stand_start = 0,
		stand_end = 30,
		walk_start = 40,
		walk_end = 60,
	},	
	view_range = 5,
	jump = true,
	step=1,
	passive = true,
	blood_amount = 5,
	blood_offset = 0,
})

mobs:register_mob("mobs:rabbit_brown", {
	type = "animal",
	hp_min = 8,
	hp_max = 10,
	collisionbox = {-0.2, -0.01, -0.2, 0.2, 0.3, 0.2},
	textures = {"mobs_rabbit_brown.png"},
	visual = "mesh",
	mesh = "rabbit.x",
	visual_size = {x=0.5,y=0.5},
	makes_footstep_sound = false,
	walk_velocity = 2,
	armor = 200,
	drops = {
		{name = "mobs:meat_raw",
		chance = 1,
		min = 0,
		max = 1,},
	},
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	sounds = {
	},
	animation = {
		speed_normal = 30,
		stand_start = 0,
		stand_end = 30,
		walk_start = 40,
		walk_end = 60,
	},	
	view_range = 5,
	jump = true,
	step=1,
	passive = true,
	blood_amount = 5,
	blood_offset = 0,
})

mobs:register_mob("mobs:rabbit_grey", {
	type = "animal",
	hp_min = 8,
	hp_max = 10,
	collisionbox = {-0.2, -0.01, -0.2, 0.2, 0.3, 0.2},
	textures = {"mobs_rabbit_grey.png"},
	visual = "mesh",
	mesh = "rabbit.x",
	visual_size = {x=0.5,y=0.5},
	makes_footstep_sound = false,
	walk_velocity = 2,
	armor = 200,
	drops = {
		{name = "mobs:meat_raw",
		chance = 1,
		min = 0,
		max = 1,},
	},
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	sounds = {
	},
	animation = {
		speed_normal = 30,
		stand_start = 0,
		stand_end = 30,
		walk_start = 40,
		walk_end = 60,
	},	
	view_range = 5,
	jump = true,
	step=1,
	passive = true,
	blood_amount = 5,
	blood_offset = 0,
})


mobs:register_spawn("mobs:rabbit", {"default:dirt_with_grass"}, 20, 8, 9000, 3, 31000)
mobs:register_spawn("mobs:rabbit_brown", {"default:dirt_with_grass"}, 20, 8, 9000, 3, 31000)
mobs:register_spawn("mobs:rabbit_grey", {"default:dirt_with_grass"}, 20, 8, 9000, 3, 31000)
