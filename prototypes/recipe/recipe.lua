data:extend(
{
  {
    type = "recipe",
    name = "laterite-crushing",
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
    main_product = "nickel-ore",
    icon_size = 64,
  },
  {
    type = "recipe",
    name = "monazite-refining",
    category = "centrifuging",
    subgroup = "raw-material",
    enabled = true,
    energy_required = 12,
    ingredients = {{"monazite-ore", 10}},
    results = 
    {
      {"uranium-ore", 2},
      {"thorium-ore", 2},
      {"neodymium-ore", 2},
      {"chromium-ore", 2},
      {"samarium-ore", 2}
    },
    main_product = "uranium-ore",
    icon_size = 64,
  }
})