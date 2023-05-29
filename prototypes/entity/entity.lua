require("util")

local alloyFurnace = table.deepcopy(data.raw.furnace["stone-furnace"])
alloyFurnace.name = "alloy-furnace"
alloyFurnace.max_health = 750
alloyFurnace.crafting_speed = 2
alloyFurnace.energy_usage = "250kW"
alloyFurnace.crafting_categories = { "alloy-smelting" }
alloyFurnace.energy_source.fuel_categories = { "chemical", "magnetic" }
alloyFurnace.minable.result = "alloy-furnace"
alloyFurnace.next_upgrade = "advanced-alloy-furnace"
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
chemicalRefinery.module_specification =
{
  module_slots = 4,
  module_info_icon_shift = {0, 0.5},
  module_info_multi_row_initial_height_modifier = -0.3
}

local alloyFurnacemk2 = table.deepcopy(data.raw.furnace["steel-furnace"])
alloyFurnacemk2.name = "advanced-alloy-furnace"
alloyFurnacemk2.max_health = 1500
alloyFurnacemk2.crafting_speed = 8
alloyFurnacemk2.energy_usage = "350kW"
alloyFurnacemk2.crafting_categories = { "alloy-smelting" }
alloyFurnacemk2.energy_source.fuel_categories = { "chemical", "magnetic" }
alloyFurnacemk2.minable.result = "advanced-alloy-furnace"
alloyFurnacemk2.next_upgrade = nil
alloyFurnacemk2.animation = {
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
alloyFurnacemk2.working_sound = {
	sound = {
		filename = "__Sky-Atlas-Metallurgy-Rebirth__/sound/furnace.ogg",
		volume = 0.4,
	},
	idle_sound = {
		filename = "__Sky-Atlas-Metallurgy-Rebirth__/sound/idle1.ogg",
		volume = 0.35,
	},
}


data:extend({
	alloyFurnace,
	alloyFurnacemk2,
	chemicalRefinery,
})
