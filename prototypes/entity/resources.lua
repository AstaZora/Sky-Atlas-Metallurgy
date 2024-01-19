local resource_autoplace = require("resource-autoplace")

data:extend({
	{
		type = "resource",
		name = "temporary-debris",
		icon = "__base__/graphics/icons/stone.png",  -- Example, use an appropriate icon
		icon_size = 32,
		flags = {"placeable-neutral"},
		category = "debris",
		order="a-b-a",
		minable = {
			mining_particle = "stone-particle",
			mining_time = 2,
			result = "stone",  -- Result of mining the debris
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		autoplace = {
			control = "stone",  -- Example, adjust as needed
			sharpness = 1,
			richness_multiplier = 1500,
			richness_multiplier_distance_bonus = 30,
			richness_base = 500,
			coverage = 0.02,
			peaks = {
				{
					noise_layer = "stone",
					noise_octaves_difference = -1.5,
					noise_persistence = 0.3,
				},
			},
		},
		stage_counts = {10000},
		stages = {
			sheet = {
				filename = "__base__/graphics/entity/stone/stone.png",  -- Example, use appropriate graphics
				priority = "extra-high",
				width = 64,
				height = 64,
				frame_count = 4,
				variation_count = 1,
				hr_version = {
					filename = "__base__/graphics/entity/stone/hr-stone.png",  -- Example, high-resolution graphics
					priority = "extra-high",
					width = 128,
					height = 128,
					frame_count = 4,
					variation_count = 1,
					scale = 0.5
				}
			}
		},
		map_color = {r=0.42, g=0.33, b=0.28}
	},
	{
		type = "resource",
		name = "aquatic-ore",
		icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/aquatic-ore.png",  -- Example, use an appropriate icon
		icon_size = 32,
		flags = {"placeable-neutral"},
		category = "aquatic",
		order="a-b-a",
		minable = {
			mining_particle = "stone-particle",
			mining_time = 2,
			result = "aquatic-ore", 
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		collision_mask = {"ground-tile", "resource-layer", "not-colliding-with-itself"},
		autoplace = resource_autoplace.resource_autoplace_settings({
			name = "aquatic-ore",
			order = "a",
			base_density = 10,
			has_starting_area_placement = false,
			regular_rq_factor_multiplier = 1,
			starting_rq_factor_multiplier = 1,
		}),
		stage_counts = {10000},
		stages = {
			sheet = {
				filename = "__base__/graphics/entity/stone/stone.png",  -- Example, use appropriate graphics
				priority = "extra-high",
				width = 64,
				height = 64,
				frame_count = 4,
				variation_count = 1,
				
			}
		},
		map_color = {r=0.10, g=0.44, b=0.44}
	},
	{
		type = "resource",
		name = "magnetite-ore",
		icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
		icon_size = 64,
		flags = { "placeable-neutral" },
		order = "g-h-i",
		minable = {
			mining_particle = "magnetite-ore-particle",
			mining_time = 1,
			fluid_amount = 10,
			required_fluid = "steam",
			results = {
				{
					name = "magnetite-ore",
					amount_min = 1,
					amount_max = 3,
				},
			},
		},
		collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		autoplace = resource_autoplace.resource_autoplace_settings({
			name = "magnetite-ore",
			order = "a",
			base_density = 10,
			has_starting_area_placement = false,
			regular_rq_factor_multiplier = 1,
			starting_rq_factor_multiplier = 1,
		}),
		stage_counts = { 10000, 6330, 3670, 1930, 870, 270, 100, 50 },
		stages = {
			sheet = {
				filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/magnetite-ore/magnetite-ore.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5,
			},
		},
		map_color = { 70, 93, 110 },
	},
	{
		type = "resource",
		name = "iron-deposit",
		icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
		icon_size = 64,
		flags = { "placeable-neutral" },
		order = "g-h-i",
		starting_area_range = 2,
		regular_rq_factor = 1,
		base_density = 10,
		richness_base = 1500,  -- Adjust as needed
		richness_multiplier = 1500,  -- Adjust as needed
		size_base = 30,  -- Adjust as needed
		size_multiplier = 2,
		minable = {
			mining_particle = "magnetite-ore-particle",
			mining_time = 1,
			result = "iron-deposit-chunk",
		},
		collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		autoplace = resource_autoplace.resource_autoplace_settings({
			name = "iron-deposit",
			order = "a",
			base_density = 1,
			has_starting_area_placement = true,
			regular_rq_factor_multiplier = 1,
			starting_rq_factor_multiplier = 1,
		}),
		stage_counts = { 10000, 6330, 3670, 1930, 870, 270, 100, 50 },
		stages = {
			sheet = {
				filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/magnetite-ore/magnetite-ore.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5,
			},
		},
		map_color = { 70, 93, 110 },
	},
	{
		type = "resource",
		name = "malachite-ore",
		icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
		icon_size = 64,
		flags = { "placeable-neutral" },
		order = "g-h-i",
		minable = {
			mining_particle = "malachite-ore-particle",
			mining_time = 1,
			result = "malachite-ore",
		},
		collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		autoplace = resource_autoplace.resource_autoplace_settings({
			name = "malachite-ore",
			order = "b",
			base_density = 5,
			has_starting_area_placement = true,
			regular_rq_factor_multiplier = 1,
			starting_rq_factor_multiplier = 1,
		}),
		stage_counts = { 10000, 6330, 3670, 1930, 870, 270, 100, 50 },
		stages = {
			sheet = {
				filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/malachite-ore/malachite-ore.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5,
			},
		},
		map_color = { r = 50, g = 221, b = 80 },
	},
	{
		type = "resource",
		name = "laterite-ore",
		icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/laterite-ore.png",
		icon_size = 64,
		flags = { "placeable-neutral" },
		order = "g-h-i",
		minable = {
			mining_particle = "laterite-ore-particle",
			mining_time = 1,
			results = {
				{
					name = "laterite-ore",
					probability = 1,
					amount_min = 1,
					amount_max = 5,
				},
				{
					name = "bauxite-ore",
					probability = 0.5,
					amount_min = 1,
					amount_max = 1,
				},
				{
					name = "cobaltite-ore",
					probability = 0.5,
					amount_min = 1,
					amount_max = 1,
				},
			},
		},
		collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		autoplace = resource_autoplace.resource_autoplace_settings({
			name = "laterite-ore",
			order = "c",
			base_density = 1,
			has_starting_area_placement = true,
			regular_rq_factor_multiplier = 1,
			starting_rq_factor_multiplier = 1,
		}),
		stage_counts = { 10000, 6330, 3670, 1930, 870, 270, 100, 50 },
		stages = {
			sheet = {
				filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/laterite-ore/laterite-ore.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5,
			},
		},
		map_color = { 196, 87, 14 },
	},
	{
		type = "resource",
		name = "monazite-ore",
		icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/monazite-ore.png",
		icon_size = 64,
		flags = { "placeable-neutral" },
		order = "h-i",
		minable = {
			mining_particle = "monazite-ore-particle",
			mining_time = 1,
			result = "monazite-ore",
			fluid_amount = 10,
			required_fluid = "sulfuric-acid",
		},
		collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		autoplace = resource_autoplace.resource_autoplace_settings({
			name = "monazite-ore",
			order = "d",
			base_density = 2,
			has_starting_area_placement = false,
			regular_rq_factor_multiplier = 1,
			starting_rq_factor_multiplier = 1,
		}),
		stage_counts = { 10000, 7500, 5000, 2500, 1250, 800, 400, 100 },
		stages = {
			sheet = {
				filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/monazite-ore/monazite-ore.png",
				priority = "medium",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5,
			},
		},
		map_color = { 220, 220, 220 },
	},
	{
		type = "resource",
		name = "haematite-ore",
		icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/haematite-ore.png",
		icon_size = 64,
		flags = { "placeable-neutral" },
		order = "h-i",
		minable = {
			mining_particle = "monazite-ore-particle",
			mining_time = 3,
			result = "haematite-ore",
		},
		collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		autoplace = resource_autoplace.resource_autoplace_settings({
			name = "haematite-ore",
			order = "e",
			base_density = 2,
			has_starting_area_placement = false,
			regular_rq_factor_multiplier = 1,
			starting_rq_factor_multiplier = 1,
		}),
		stage_counts = { 10000, 6000, 2500, 400 },
		stages = {
			sheet = {
				filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/haematite-ore/haematite-ore.png",
				priority = "medium",
				width = 40,
				height = 40,
				frame_count = 4,
				variation_count = 8,
				scale = 1,
			},
		},
		map_color = { 220, 120, 20 },
	},
	{
		type = "resource",
		name = "oil-shale",
		icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/oil-shale-ore.png",
		icon_size = 64,
		flags = { "placeable-neutral" },
		order = "h-i",
		minable = {
			mining_particle = "monazite-ore-particle",
			mining_time = 10,
			result = "oil-shale-ore",
			fluid_amount = 25,
			required_fluid = "steam",
		},
		collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		autoplace = resource_autoplace.resource_autoplace_settings({
			name = "oil-shale",
			order = "d",
			base_density = 1,
			has_starting_area_placement = false,
			regular_rq_factor_multiplier = 1,
			starting_rq_factor_multiplier = 1,
		}),
		stage_counts = { 10000, 7500, 5000, 2500, 1250, 800, 400, 100 },
		stages = {
			sheet = {
				filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/oil-shale-ore/oil-shale-ore.png",
				priority = "medium",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5,
			},
		},
		map_color = { 20, 20, 20 },
	},
	{
		type = "resource",
		name = "galena-ore",
		icon = "__base__/graphics/icons/coal.png",
		icon_size = 64,
		flags = { "placeable-neutral" },
		order = "h-i",
		minable = {
			mining_particle = "monazite-ore-particle",
			mining_time = 2,
			results = {
				{
					name = "galena-ore",
					probability = 1,
					amount_min = 1,
					amount_max = 1,
				},
				{
					name = "sulfur",
					probability = 0.2,
					amount_min = 1,
					amount_max = 3,
				},
			},
			fluid_amount = 5,
			required_fluid = "muriatic-acid",
		},
		collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		autoplace = resource_autoplace.resource_autoplace_settings({
			name = "galena-ore",
			order = "f",
			base_density = 1,
			has_starting_area_placement = false,
			regular_rq_factor_multiplier = 1,
			starting_rq_factor_multiplier = 1,
		}),
		stage_counts = { 10000, 7500, 5000, 2500, 1250, 800, 400, 100 },
		stages = {
			sheet = {
				filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/monazite-ore/monazite-ore.png",
				priority = "medium",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5,
			},
		},
		map_color = { 20, 20, 20 },
	},
	{
		type = "resource",
		name = "chromite-ore",
		icon = "__base__/graphics/icons/coal.png",
		icon_size = 64,
		flags = { "placeable-neutral" },
		order = "h-i",
		minable = {
			mining_particle = "monazite-ore-particle",
			mining_time = 5,
			results = {
				{
					name = "chromite-ore",
					probability = 1,
					amount_min = 1,
					amount_max = 10,
				},
				{
					name = "magnetite-ore",
					probability = 0.2,
					amount_min = 1,
					amount_max = 3,
				},
				{
					name = "titanium-ore",
					probability = 0.2,
					amount_min = 1,
					amount_max = 5,
				},
			},
			fluid_amount = 5,
			required_fluid = "luret-acid",
		},
		collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		autoplace = resource_autoplace.resource_autoplace_settings({
			name = "chromite-ore",
			order = "f",
			base_density = 1,
			has_starting_area_placement = false,
			regular_rq_factor_multiplier = 1,
			starting_rq_factor_multiplier = 1,
		}),
		stage_counts = { 10000, 7500, 5000, 2500, 1250, 800, 400, 100 },
		stages = {
			sheet = {
				filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/monazite-ore/monazite-ore.png",
				priority = "low",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5,
			},
		},
		map_color = { 20, 20, 20 },
	},
	{
		type = "resource",
		name = "carbonatite-ore",
		icon = "__base__/graphics/icons/coal.png",
		icon_size = 64,
		flags = { "placeable-neutral" },
		order = "h-i",
		minable = {
			mining_particle = "monazite-ore-particle",
			mining_time = 5,
			results = {
				{
					name = "carbonatite-ore",
					probability = 1,
					amount_min = 1,
					amount_max = 10,
				},
				{
					name = "scarce-metal-ores",
					probability = 0.2,
					amount_min = 1,
					amount_max = 3,
				},
				{
					name = "valuable-metal-ores",
					probability = 0.2,
					amount_min = 1,
					amount_max = 5,
				},
			},
			fluid_amount = 5,
			required_fluid = "carbonic-acid",
		},
		collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		autoplace = resource_autoplace.resource_autoplace_settings({
			name = "carbonatite-ore",
			order = "f",
			base_density = 3,
			has_starting_area_placement = false,
			regular_rq_factor_multiplier = 1,
			starting_rq_factor_multiplier = 1,
		}),
		stage_counts = { 10000, 7500, 5000, 2500, 1250, 800, 400, 100 },
		stages = {
			sheet = {
				filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/monazite-ore/monazite-ore.png",
				priority = "low",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5,
			},
		},
		map_color = { 20, 20, 20 },
	},
})
data:extend({
	
	{
		type = "resource",
		name = "magnetite-debris",
		icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
		icon_size = 64,
		flags = { "placeable-neutral" },
		category = "debris",
		order = "i",
		minable = {
			mining_particle = "magnetite-ore-particle",
			mining_time = 1,
			results = {
				{
					name = "magnetite-debris",
					amount_min = 1,
					amount_max = 5,
				},
			},
		},
		collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		autoplace = resource_autoplace.resource_autoplace_settings({
			name = "magnetite",
			order = "a",
			base_density = 10,
			has_starting_area_placement = false,
			regular_rq_factor_multiplier = 1,
			starting_rq_factor_multiplier = 1,
		}),
		stage_counts = { 10000, 6330, 3670, 1930, 870, 270, 100, 50 },
		stages = {
			sheet = {
				filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/magnetite-ore/magnetite-ore.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5,
			},
		},
		map_color = { 70, 93, 110 },
	},
	{
		type = "resource",
		name = "magnetite-raw",
		icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
		icon_size = 64,
		flags = { "placeable-neutral" },
		order = "i",
		minable = {
			mining_particle = "magnetite-ore-particle",
			mining_time = 2,
			fluid_amount = 10,
			required_fluid = "motor-oil",
			results = {
				{
					name = "refined-magnetite-ore",
					amount_min = 1,
					amount_max = 3,
				},
			},
		},
		collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		autoplace = resource_autoplace.resource_autoplace_settings({
			name = "magnetite",
			order = "b",
			base_density = 10,
			has_starting_area_placement = false,
			regular_rq_factor_multiplier = 1,
			starting_rq_factor_multiplier = 1,
		}),
		stage_counts = { 10000, 6330, 3670, 1930, 870, 270, 100, 50 },
		stages = {
			sheet = {
				filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/magnetite-ore/magnetite-ore.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5,
			},
		},
		map_color = { 70, 93, 110 },
	},
	{
		type = "resource",
		name = "magnetite-valuable",
		icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
		icon_size = 64,
		flags = { "placeable-neutral" },
		order = "i",
		minable = {
			mining_particle = "magnetite-ore-particle",
			mining_time = 3,
			fluid_amount = 5,
			required_fluid = "carbonic-acid",
			results = {
				{
					name = "imperfect-magnetite",
					amount_min = 1,
					amount_max = 3,
				},
			},
		},
		collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		autoplace = resource_autoplace.resource_autoplace_settings({
			name = "magnetite",
			order = "c",
			base_density = 10,
			has_starting_area_placement = false,
			regular_rq_factor_multiplier = 1,
			starting_rq_factor_multiplier = 1,
		}),
		stage_counts = { 10000, 6330, 3670, 1930, 870, 270, 100, 50 },
		stages = {
			sheet = {
				filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/magnetite-ore/magnetite-ore.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5,
			},
		},
		map_color = { 70, 93, 110 },
	},
	{
		type = "resource",
		name = "magnetite-core",
		icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
		icon_size = 64,
		flags = { "placeable-neutral" },
		order = "i",
		minable = {
			mining_particle = "magnetite-ore-particle",
			mining_time = 4,
			fluid_amount = 5,
			required_fluid = "caudic-acid",
			results = {
				{
					name = "pure-magnetite-ore",
					amount_min = 1,
					amount_max = 3,
				},
			},
		},
		collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		autoplace = resource_autoplace.resource_autoplace_settings({
			name = "magnetite",
			order = "d",
			base_density = 10,
			has_starting_area_placement = false,
			regular_rq_factor_multiplier = 1,
			starting_rq_factor_multiplier = 1,
		}),
		stage_counts = { 10000, 6330, 3670, 1930, 870, 270, 100, 50 },
		stages = {
			sheet = {
				filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/magnetite-ore/magnetite-ore.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5,
			},
		},
		map_color = { 70, 93, 110 },
	},
	{
		type = "resource",
		name = "magnetite-deposit",
		icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
		icon_size = 64,
		flags = { "placeable-neutral" },
		order = "i",
		starting_area_range = 2,
		regular_rq_factor = 1,
		base_density = 10,
		richness_base = 1500,  -- Adjust as needed
		richness_multiplier = 1500,  -- Adjust as needed
		size_base = 30,  -- Adjust as needed
		size_multiplier = 2,
		minable = {
			fluid_amount = 10,
			required_fluid = "motor-oil",
			mining_particle = "magnetite-ore-particle",
			mining_time = 1,
			result = "magnetite-ore",
		},
		collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		autoplace = resource_autoplace.resource_autoplace_settings({
			name = "magnetite",
			order = "e",
			base_density = 1,
			has_starting_area_placement = true,
			regular_rq_factor_multiplier = 1,
			starting_rq_factor_multiplier = 1,
		}),
		stage_counts = { 10000, 6330, 3670, 1930, 870, 270, 100, 50 },
		stages = {
			sheet = {
				filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/magnetite-ore/magnetite-ore.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5,
			},
		},
		map_color = { 70, 93, 110 },
	},
})