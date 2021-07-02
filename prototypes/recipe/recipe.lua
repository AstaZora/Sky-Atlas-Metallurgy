data:extend(
{
  {
    type = "recipe",
    name = "laterite-crushing",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/cobalt-ore.png",
    category = "crafting",
    subgroup = "intermediate-product",
    enabled = true,
    energy_required = 12,
    ingredients = {{"laterite-ore", 8}},
    results =
    {
      {"cobalt-ore", 2},
      {"bauxite-ore", 2},
      {"magnetite-ore", 2},
      {"malachite-ore", 2}
    },
    icon_size = 64
  },
  {
    type = "recipe",
    name = "bauxite-reduction",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/bauxite-ore.png",
    category = "crafting",
    subgroup = "intermediate-product",
    enabled = true,
    energy_required = 3,
    ingredients = {{"bauxite-ore", 4}},
    results =
    {
      {"titanium-ore", 2},
      {"aluminum-ore", 2}
    },
    icon_size = 64
  },
  {
    type = "recipe",
    name = "monazite-refining",
    icon = "__base__/graphics/icons/uranium-ore.png",
    category = "centrifuging",
    subgroup = "raw-material",
    enabled = true,
    energy_required = 30,
    ingredients = {{"monazite-ore", 10}},
    results =
    {
      {
        name = "uranium-ore",
        probability = 0.05,
        amount = 2
      },
      {
        name = "thorium-ore",
        probability = 0.1,
        amount = 2
      },
      {
        name = "neodymium-ore",
        probability = 0.2,
        amount = 4
      },
      {
        name = "samarium-ore",
        probability = 0.2,
        amount = 4
      },
      {
        name = "chromite-ore",
        probability = 0.4,
        amount = 8
      }
    },
    icon_size = 64
  },
  {
    type = "recipe",
    name = "alloy-furnace",
    icon = "__base__/graphics/icons/electric-furnace.png",
    category = "crafting",
    subgroup = "smelting-machine",
    enabled = true,
    energy_required = 12,
    ingredients = {{"cobalt-plate", 10}, {"nickel-plate", 10}, {"iron-plate", 10}, {"stone-brick", 25}},
    results =
    {
      {"alloy-furnace", 1}
    },
    icon_size = 64
  },
   --New Items (Nuclear)
   {
    type = "recipe",
    name = "thorium-fuel-cell",
    energy_required = 10,
    enabled = true,
    ingredients =
    {
      {"monel-plate", 12},
      {"invar-plate", 12},
      {"kovar-plate", 20},
      {"thorium-ore", 8},
      {"uranium-235", 4},
      {"uranium-238", 10}
    },
    result = "thorium-fuel-cell",
    result_count = 4
  },

  --Recycle Ores
  {
    type = "recipe",
    name = "bauxite-recycling",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/bauxite-ore.png",
    category = "crafting",
    subgroup = "raw-resource",
    enabled = true,
    energy_required = 12,
    ingredients = {{"bauxite-ore", 8}},
    results =
    {
      {"laterite-ore", 8}
    },
    icon_size = 64
  },

    --recipe categories

  {
    type = "recipe-category",
    name = "electrolysis"
  },
  {
    type = "recipe-category",
    name = "alloying"
  },
  {
    type = "recipe-category",
    name = "alloy-smelting"
  }
})