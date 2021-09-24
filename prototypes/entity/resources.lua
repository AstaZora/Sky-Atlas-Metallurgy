local resource_autoplace = require("resource-autoplace")

data:extend(
{
  {
    type = "resource",
    name = "magnetite-ore",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order="g-h-i",
    minable =
    {
      mining_particle = "magnetite-ore-particle",
      mining_time = 1,
      result = "magnetite-ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "magnetite-ore",
      order = "a",
      base_density = 10,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1,
      starting_rq_factor_multiplier = 1
    },
    stage_counts = {10000, 6330, 3670, 1930, 870, 270, 100, 50},
    stages =
    {
      sheet =
      {
        filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/magnetite-ore/magnetite-ore.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
    },
    map_color = {70, 93, 110}
  },
  {
    type = "resource",
    name = "malachite-ore",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order="g-h-i",
    minable =
    {
      mining_particle = "malachite-ore-particle",
      mining_time = 1,
      result = "malachite-ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "malachite-ore",
      order = "b",
      base_density = 5,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1,
      starting_rq_factor_multiplier = 1
    },
    stage_counts = {10000, 6330, 3670, 1930, 870, 270, 100, 50},
    stages =
    {
      sheet =
      {
        filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/malachite-ore/malachite-ore.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
    },
    map_color = {r=50, g=221, b=80}
  },
  {
    type = "resource",
    name = "laterite-ore",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/laterite-ore.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order="g-h-i",
    minable = 
    {
      mining_particle = "laterite-ore-particle",
      mining_time = 1,
      results = {
      {
        name = "laterite-ore",
        probability = 1,
        amount_min = 1,
        amount_max = 10
      },
      {
        name = "bauxite-ore",
        probability = 0.5,
        amount_min = 1,
        amount_max = 10
      },
      {
        name = "cobaltite-ore",
        probability = 0.5,
        amount_min = 1,
        amount_max = 10
      },
    }
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "laterite-ore",
      order = "c",
      base_density = 10,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1,
      starting_rq_factor_multiplier = 1
    },
    stage_counts = {10000, 6330, 3670, 1930, 870, 270, 100, 50},
    stages =
    {
      sheet =
      {
        filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/laterite-ore/laterite-ore.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
    },
    map_color = {196, 87, 14}
  },
  {
    type = "resource",
    name = "monazite-ore",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/monazite-ore.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order="h-i",
    minable =
    {
      mining_particle = "monazite-ore-particle",
      mining_time = 1,
      result = "monazite-ore",
      fluid_amount = 10,
      required_fluid = "sulfuric-acid"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "monazite-ore",
      order = "d",
      base_density = 5,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1,
      starting_rq_factor_multiplier = 1
    },
    stage_counts = {10000, 7500, 5000, 2500, 1250, 800, 400, 100},
    stages =
    {
      sheet =
      {
        filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/monazite-ore/monazite-ore.png",
        priority = "medium",
        width = 128,
        height = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
    },
    map_color = {220, 220, 220}
  },
  {
    type = "resource",
    name = "haematite-ore",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/haematite-ore.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order="h-i",
    minable =
    {
      mining_particle = "monazite-ore-particle",
      mining_time = 3,
      result = "haematite-ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "haematite-ore",
      order = "e",
      base_density = 7,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1,
      starting_rq_factor_multiplier = 1
    },
    stage_counts = {10000, 6000, 2500, 400},
    stages =
    {
      sheet =
      {
        filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/haematite-ore/haematite-ore.png",
        priority = "medium",
        width = 40,
        height = 40,
        frame_count = 4,
        variation_count = 8,
        scale = 1
      }
    },
    map_color = {220, 120, 20}
  },
  {
    type = "resource",
    name = "oil-shale",
    icon = "__base__/graphics/icons/coal.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order="h-i",
    minable =
    {
      mining_particle = "monazite-ore-particle",
      mining_time = 10,
      result = "oil-shale",
      fluid_amount = 25,
      required_fluid = "steam"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "oil-shale",
      order = "d",
      base_density = 8,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1,
      starting_rq_factor_multiplier = 1
    },
    stage_counts = {10000, 7500, 5000, 2500, 1250, 800, 400, 100},
    stages =
    {
      sheet =
      {
        filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/monazite-ore/monazite-ore.png",
        priority = "medium",
        width = 128,
        height = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
    },
    map_color = {20, 20, 20}
  },
  {
    type = "resource",
    name = "galena-ore",
    icon = "__base__/graphics/icons/coal.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order="h-i",
    minable =
    {
      mining_particle = "monazite-ore-particle",
      mining_time = 2,
      results = {
        {
          name = "galena-ore",
          probability = 1,
          amount_min = 1,
          amount_max = 1
        },
        {
          name = "sulfur",
          probability = 0.05,
          amount_min = 1,
          amount_max = 3
        },
      },
      fluid_amount = 5,
      required_fluid = "muriatic-acid"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "galena-ore",
      order = "f",
      base_density = 6,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1,
      starting_rq_factor_multiplier = 1
    },
    stage_counts = {10000, 7500, 5000, 2500, 1250, 800, 400, 100},
    stages =
    {
      sheet =
      {
        filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/monazite-ore/monazite-ore.png",
        priority = "medium",
        width = 128,
        height = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
    },
    map_color = {20, 20, 20}
  },
  
  {
    type = "resource",
    name = "carbonatite-ore",
    icon = "__base__/graphics/icons/coal.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order="h-i",
    minable =
    {
      mining_particle = "monazite-ore-particle",
      mining_time = 3,
      results = {
        {
          name = "carbonatite-ore",
          probability = 1,
          amount_min = 1,
          amount_max = 1
        },
        {
          name = "monazite-ore",
          probability = 0.2,
          amount_min = 1,
          amount_max = 3
        },
        {
          name = "titanium-ore",
          probability = 0.15,
          amount_min = 1,
          amount_max = 1
        },
      },
      fluid_amount = 5,
      required_fluid = "carbonic-acid"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "carbonatite-ore",
      order = "f",
      base_density = 6,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1,
      starting_rq_factor_multiplier = 1
    },
    stage_counts = {10000, 7500, 5000, 2500, 1250, 800, 400, 100},
    stages =
    {
      sheet =
      {
        filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/monazite-ore/monazite-ore.png",
        priority = "medium",
        width = 128,
        height = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
    },
    map_color = {20, 20, 20}
  }
})