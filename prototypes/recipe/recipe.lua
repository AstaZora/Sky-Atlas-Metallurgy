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
    name = "monazite-refining",
    icon = "__base__/graphics/icons/uranium-ore.png",
    category = "chemistry",
    subgroup = "raw-material",
    enabled = true,
    energy_required = 12,
    ingredients = {{"monazite-ore", 10}, {type="fluid", name="sulfuric-acid", amount=100}},
    results =
    {
      {"uranium-ore", 2},
      {"thorium-ore", 2},
      {"neodymium-ore", 2},
      {"chromium-ore", 2},
      {"samarium-ore", 2}
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