local bulkdrone = table.deepcopy(data.raw["logistic-robot"]["logistic-robot"])
bulkdrone.name = "bulk-drone"
bulkdrone.icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/construction-robo-ico.png"
bulkdrone.icon_size = 32
bulkdrone.icon_mipmaps = 4
bulkdrone.flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map" }
bulkdrone.minable.result = "bulk-drone"
bulkdrone.max_health = 250
bulkdrone.speed = 0.10
bulkdrone.max_energy = "50MJ"
bulkdrone.energy_per_tick = "0.05kJ"
bulkdrone.speed_multiplier_when_out_of_energy = 0.5
bulkdrone.energy_per_move = "10kJ"
bulkdrone.max_payload_size = 50
bulkdrone.idle = {
	filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/construction-robot/construction-robot.png",
	priority = "high",
	line_length = 16,
	width = 64,
	height = 64,
	scale = 0.5,
	frame_count = 1,
	shift = { 0, 0 },
	direction_count = 16,
	y = 64,
}
bulkdrone.idle_with_cargo = {
	filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/construction-robot/construction-robot.png",
	priority = "high",
	line_length = 16,
	width = 64,
	height = 64,
	scale = 0.5,
	frame_count = 1,
	shift = { 0, 0 },
	direction_count = 16,
}
bulkdrone.in_motion = {
	filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/construction-robot/construction-robot.png",
	priority = "high",
	line_length = 16,
	width = 64,
	height = 64,
	scale = 0.5,
	frame_count = 1,
	shift = { 0, 0 },
	direction_count = 16,
	y = 192,
}
bulkdrone.in_motion_with_cargo = {
	filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/construction-robot/construction-robot.png",
	priority = "high",
	line_length = 16,
	width = 64,
	height = 64,
	scale = 0.5,
	frame_count = 1,
	shift = { 0, 0 },
	direction_count = 16,
	y = 128,
}
bulkdrone.shadow_idle = {
	filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/construction-robot/construction-robot-shadow.png",
	priority = "high",
	line_length = 16,
	width = 64,
	height = 64,
	scale = 0.5,
	frame_count = 1,
	shift = { 0, 0 },
	direction_count = 16,
}
bulkdrone.shadow_idle_with_cargo = {
	filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/construction-robot/construction-robot-shadow.png",
	priority = "high",
	line_length = 16,
	width = 64,
	height = 64,
	scale = 0.5,
	frame_count = 1,
	shift = { 0, 0 },
	direction_count = 16,
}
bulkdrone.shadow_in_motion = {
	filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/construction-robot/construction-robot-shadow.png",
	priority = "high",
	line_length = 16,
	width = 64,
	height = 64,
	scale = 0.5,
	frame_count = 1,
	shift = { 0, 0 },
	direction_count = 16,
}
bulkdrone.shadow_in_motion_with_cargo = {
	filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/construction-robot/construction-robot-shadow.png",
	priority = "high",
	line_length = 16,
	width = 64,
	height = 64,
	scale = 0.5,
	frame_count = 1,
	shift = { 0, 0 },
	direction_count = 16,
}

data:extend({
	bulkdrone,
})
