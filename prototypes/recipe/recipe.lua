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
    type = "recipe-category",
    name = "electrolysis"
  },
  {
    type = "recipe-category",
    name = "alloying"
  }
})