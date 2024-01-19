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
local debrisMiner = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
debrisMiner.name= "debris-miner"
debrisMiner.mining_power = 3.0  -- Adjust based on your needs
debrisMiner.mining_speed = 2.0  -- Adjust based on your needs
debrisMiner.energy_usage = "50kW"
debrisMiner.minable = {mining_time = 0.3, result = "debris-miner"}
debrisMiner.resource_categories = {"debris"}
debrisMiner.flags = {"placeable-neutral", "placeable-player", "player-creation"}  -- Can be placed generally, including on resource tiles
debrisMiner.collision_box = {{ -1.4, -1.4}, {1.4, 1.4}}
debrisMiner.selection_box = {{ -1.5, -1.5}, {1.5, 1.5}}

local waterMiner = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
waterMiner.name = "aquatic-miner"
waterMiner.mining_power = 1.0
waterMiner.mining_speed = 1.0
waterMiner.energy_usage = "120kW"
waterMiner.minable = {mining_time = 0.5, result = "aquatic-miner"}
waterMiner.resource_categories = {"aquatic"}
waterMiner.collision_mask = {"ground-tile", "resource-layer", "not-colliding-with-itself"}
waterMiner.flags = {"placeable-neutral", "placeable-player", "player-creation"}  -- Can be placed generally, including on resource tiles
waterMiner.collision_box = {{ -1.4, -1.4}, {1.4, 1.4}}
waterMiner.selection_box = {{ -1.5, -1.5}, {1.5, 1.5}}


local chlorophyll_battery = table.deepcopy(data.raw["electric-energy-interface"]["electric-energy-interface"])

chlorophyll_battery.name = "chlorophyll-battery"
chlorophyll_battery.icon = "__base__/graphics/icons/accumulator.png"
chlorophyll_battery.charge_cooldown = 16
chlorophyll_battery.discharge_cooldown = 16
chlorophyll_battery.energy_production = "150kW"
chlorophyll_battery.gui_mode = "none"
chlorophyll_battery.minable = {mining_time = 0.5, result = "chlorophyll-battery"}
chlorophyll_battery.energy_source = {
	type = "electric",
	buffer_capacity = "5MJ",
	usage_priority = "tertiary",
	input_flow_limit = "300kW",
	output_flow_limit = "300kW",
  }
chlorophyll_battery.picture = {
	filename = "__base__/graphics/entity/accumulator/accumulator.png", -- Use the accumulator's graphics as a placeholder
	priority = "extra-high",
	width = 66,
	height = 94,
	shift = {0.0, -0.0},
  }
  chlorophyll_battery.charge_animation = {
	filename = "__base__/graphics/entity/accumulator/accumulator-charge.png", -- Use the accumulator's charge animation as a placeholder
	priority = "extra-high",
	width = 87,
	height = 71,
	line_length = 6,
	frame_count = 24,
	shift = {0.0, -0.0},
	animation_speed = 0.5,
  }
  chlorophyll_battery.water_reflection = {
	pictures = {
	  filename = "__base__/graphics/entity/accumulator/accumulator-reflection.png", -- Use the accumulator's water reflection as a placeholder
	  priority = "extra-high",
	  width = 20,
	  height = 24,
	  shift = {0.0, 1.0},
	},
	rotate = false,
	orientation_to_variation = false,
  }
  chlorophyll_battery.vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65}
  chlorophyll_battery.working_sound = {
	sound = {
	  filename = "__base__/sound/accumulator-working.ogg", -- Use the accumulator's working sound as a placeholder
	  volume = 1,
	},
	idle_sound = {
	  filename = "__base__/sound/accumulator-idle.ogg", -- Use the accumulator's idle sound as a placeholder
	  volume = 0.4,
	},
	max_sounds_per_type = 5,
	audible_distance_modifier = 0.5,
  }
  chlorophyll_battery.selection_box = {{-1.1, -1.1}, {1.1, 1.1}} -- Adjust the values as needed
  chlorophyll_battery.collision_box = {{-0.9, -0.9}, {0.9, 0.9}} -- Adjust the values as needed

-- Register the new entity to Factorio's Data
data:extend({
	alloyFurnace,
	alloyFurnacemk2,
	chemicalRefinery,
	debrisMiner,
	waterMiner,
	chlorophyll_battery
})
