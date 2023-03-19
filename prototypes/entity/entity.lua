require("util")

local alloyFurnace = table.deepcopy(data.raw.furnace["stone-furnace"])
alloyFurnace.name = "alloy-furnace"
alloyFurnace.max_health = 750
alloyFurnace.crafting_speed = 2
alloyFurnace.energy_usage = "250kW"
alloyFurnace.crafting_categories = { "alloy-smelting" }
alloyFurnace.energy_source.fuel_categories = { "chemical", "magnetic" }
alloyFurnace.minable.result = "alloy-furnace"
alloyFurnace.next_upgrade = nil
alloyFurnace.animation = {
	layers = {
		{
			filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/clay_furnace/clay_furnace.png",
			priority = "extra-high",
			width = 81,
			height = 64,
			frame_count = 1,
			shift = util.by_pixel(22, 0),
			scale = 1.2,
		},
		{
			filename = "__base__/graphics/entity/stone-furnace/stone-furnace-shadow.png",
			priority = "extra-high",
			width = 81,
			height = 64,
			frame_count = 1,
			draw_as_shadow = true,
			shift = util.by_pixel(14.5, 2),
		},
	},
}
alloyFurnace.working_sound = {
	sound = {
		filename = "__Sky-Atlas-Metallurgy-Rebirth__/sound/furnace.ogg",
		volume = 0.4,
	},
	idle_sound = {
		filename = "__Sky-Atlas-Metallurgy-Rebirth__/sound/idle1.ogg",
		volume = 0.35,
	},
}

local chemicalRefinery = table.deepcopy(data.raw["assembling-machine"]["oil-refinery"])
chemicalRefinery.crafting_speed = 4
chemicalRefinery.energy_usage = "1500kW"
chemicalRefinery.name = "chemical-refinery"
chemicalRefinery.minable.result = "chemical-refinery"
chemicalRefinery.crafting_categories = { "oil-processing", "chemistry" }
chemicalRefinery.fluid_boxes = {
	{
		production_type = "output",
		pipe_covers = pipecoverspictures(),
		base_level = 1,
		pipe_connections = { { position = { -1, 3 } } },
	},
	{
		production_type = "output",
		pipe_covers = pipecoverspictures(),
		base_level = 1,
		pipe_connections = { { position = { 1, 3 } } },
	},
	{
		production_type = "input",
		pipe_covers = pipecoverspictures(),
		base_area = 10,
		base_level = -1,
		pipe_connections = { { type = "input", position = { -2, -3 } } },
	},
	{
		production_type = "input",
		pipe_covers = pipecoverspictures(),
		base_area = 10,
		base_level = -1,
		pipe_connections = { { type = "input", position = { 0, -3 } } },
	},
	{
		production_type = "input",
		pipe_covers = pipecoverspictures(),
		base_area = 10,
		base_level = -1,
		pipe_connections = { { type = "input", position = { 2, -3 } } },
	},
}

data:extend({
	alloyFurnace,
	chemicalRefinery,
})
