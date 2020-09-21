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
      base_density = 8,
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
      base_density = 8,
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
    map_color = {5, 82, 22}
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
      result = "laterite-ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "laterite-ore",
      order = "c",
      base_density = 8,
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
  }
})