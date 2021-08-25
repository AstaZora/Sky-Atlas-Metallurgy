data:extend(
{
  {
    type = "recipe",
    name = "laterite-crushing",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/laterite-ore.png",
    category = "crafting",
    subgroup = "metallurgy-processes",
    enabled = true,
    energy_required = 6,
    ingredients = {{"laterite-ore", 8}},
    results =
    {
      {"cobaltite-ore", 3},
      {"bauxite-ore", 3},
      {"magnetite-ore", 1},
      {"malachite-ore", 1}
    },
    icon_size = 64
  },
  {
    type = "recipe",
    name = "bauxite-reduction",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/bauxite-ore.png",
    category = "crafting",
    subgroup = "metallurgy-processes",
    enabled = true,
    energy_required = 3,
    ingredients = {{"bauxite-ore", 8}},
    results =
    {
      {"titanium-ore", 4},
      {"aluminum-ore", 6}
    },
    icon_size = 64
  },
  {
    type = "recipe",
    name = "chromite-reduction",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/chromite-ore.png",
    category = "crafting",
    subgroup = "metallurgy-processes",
    enabled = true,
    energy_required = 3,
    ingredients = {{"chromite-ore", 8}},
    results =
    {
      {"chromite-ore", 4},
      {"magnetite-ore", 4}
    },
    icon_size = 64
  },
  {
    type = "recipe",
    name = "aluminum-recycling",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/bauxite-ore.png",
    category = "crafting",
    subgroup = "metallurgy-processes",
    enabled = true,
    energy_required = 1,
    ingredients = {{"aluminum-ore", 8}},
    results =
    {
      {"bauxite-ore", 8}
    },
    icon_size = 64
  },
  {
    type = "recipe",
    name = "cobaltite-reduction",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/cobaltite-ore.png",
    category = "crafting",
    subgroup = "metallurgy-processes",
    enabled = true,
    energy_required = 3,
    ingredients = {{"cobaltite-ore", 8}},
    results =
    {
      {"cobalt-ore", 4},
      {"magnetite-ore", 2},
      {"nickel-ore", 4}
    },
    icon_size = 64
  },
  {
    type = "recipe",
    name = "monazite-refining",
    icon = "__base__/graphics/icons/uranium-ore.png",
    category = "centrifuging",
    subgroup = "metallurgy-processes",
    enabled = true,
    energy_required = 30,
    ingredients = {{"monazite-ore", 10}},
    results =
    {
      {
        name = "uranium-ore",
        probability = 0.25,
        amount = 20
      },
      {
        name = "thorium-ore",
        probability = 0.05,
        amount = 5
      },
      {
        name = "neodymium-ore",
        probability = 0.1,
        amount = 10
      },
      {
        name = "samarium-ore",
        probability = 0.1,
        amount = 10
      },
      {
        name = "chromite-ore",
        probability = 0.5,
        amount = 10
      }
    },
    icon_size = 64
  },
  {
    type = "recipe",
    name = "alloy-furnace",
    icon = "__base__/graphics/icons/electric-furnace.png",
    category = "crafting",
    subgroup = "sam-recipes",
    enabled = true,
    energy_required = 12,
    ingredients = {{"cobalt-plate", 10}, {"nickel-plate", 10}, {"iron-plate", 10}, {"stone-brick", 25}},
    results =
    {
      {"alloy-furnace", 1}
    },
    icon_size = 64
  },
   --Metallurgy Stages

   --Magnetite Purification
   {
    type = "recipe",
    name = "crushed-magnetite",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "aa",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"magnetite-ore", 4}
    },
    result = "crushed-magnetite",
    result_count = 3
  },
  {
    type = "recipe",
    name = "magnetite-powder",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"crushed-magnetite", 2}
    },
    result = "magnetite-powder",
    result_count = 3
  },
--side note - OXYGENATION STATE = Purification = Faster Smelt
  {
    type = "recipe",
    name = "refined-magnetite-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 6,
    enabled = true,
    ingredients =
    {
      {"magnetite-powder", 3},
      {type="fluid", name="water", amount=25}
    },
    result = "refined-magnetite-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-magnetite-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 3,
    enabled = true,
    ingredients =
    {
      {"refined-magnetite-powder", 3},
      {type="fluid", name="water", amount=50}
    },
    result = "pure-magnetite-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "magnetite-rock",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ae",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 12,
    enabled = true,
    ingredients =
    {
      {"pure-magnetite-powder", 2},
      {type="fluid", name="water", amount=100}
    },
    result = "magnetite-rock",
    result_count = 3
  },
  {
    type = "recipe",
    name = "magnetite-chunk",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "af",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"magnetite-rock", 2},
      {"sulfur", 4}
    },
    result = "magnetite-chunk",
    result_count = 3
  },
  {
    type = "recipe",
    name = "magnetite-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ag",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 10,
    enabled = true,
    ingredients =
    {
      {"magnetite-chunk", 2},
      {type="fluid", name="sulfuric-acid", amount=25}
    },
    result = "magnetite-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "purified-magnetite-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ah",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 5,
    enabled = true,
    ingredients =
    {
      {"magnetite-shard", 3},
      {type="fluid", name="steam", amount=50}
    },
    result = "purified-magnetite-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-magnetite-ore",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ai",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 12,
    enabled = true,
    ingredients =
    {
      {"purified-magnetite-shard", 1},
      {type="fluid", name="water", amount=25},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-magnetite-ore",
    result_count = 2
  },
   --Malachite Refining
   {
    type = "recipe",
    name = "crushed-malachite",
    category = "crafting",
    subgroup = "metallurgy-processes",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 3,
    enabled = true,
    ingredients =
    {
      {"malachite-ore", 4}
    },
    result = "crushed-malachite",
    result_count = 3
  },
  {
    type = "recipe",
    name = "malachite-powder",
    category = "crafting",
    subgroup = "metallurgy-processes",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 3,
    enabled = true,
    ingredients =
    {
      {"crushed-malachite", 2}
    },
    result = "malachite-powder",
    result_count = 3
  },
--side note - OXYGENATION STATE = Purification = Faster Smelt
  {
    type = "recipe",
    name = "refined-malachite-powder",
    category = "crafting",
    subgroup = "metallurgy-processes",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 3,
    enabled = true,
    ingredients =
    {
      {"malachite-powder", 3}
    },
    result = "refined-malachite-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-malachite-powder",
    category = "crafting",
    subgroup = "metallurgy-processes",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 3,
    enabled = true,
    ingredients =
    {
      {"refined-malachite-powder", 3}
    },
    result = "pure-malachite-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "malachite-rock",
    category = "crafting",
    subgroup = "metallurgy-processes",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 3,
    enabled = true,
    ingredients =
    {
      {"pure-malachite-powder", 2}
    },
    result = "malachite-rock",
    result_count = 3
  },
  {
    type = "recipe",
    name = "malachite-chunk",
    category = "crafting",
    subgroup = "metallurgy-processes",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 3,
    enabled = true,
    ingredients =
    {
      {"malachite-rock", 2}
    },
    result = "malachite-chunk",
    result_count = 3
  },
  {
    type = "recipe",
    name = "malachite-shard",
    category = "crafting",
    subgroup = "metallurgy-processes",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 3,
    enabled = true,
    ingredients =
    {
      {"malachite-chunk", 2}
    },
    result = "malachite-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "purified-malachite-shard",
    category = "crafting",
    subgroup = "metallurgy-processes",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 3,
    enabled = true,
    ingredients =
    {
      {"malachite-shard", 3}
    },
    result = "purified-malachite-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-malachite-ore",
    category = "crafting",
    subgroup = "metallurgy-processes",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 3,
    enabled = true,
    ingredients =
    {
      {"purified-malachite-shard", 1}
    },
    result = "pure-malachite-ore",
    result_count = 2
  },
   --New Items (Nuclear)
   {
    type = "recipe",
    name = "thorium-fuel-cell",
    subgroup = "sam-recipes",
    energy_required = 100,
    enabled = true,
    ingredients =
    {
      {"monel-plate", 30},
      {"invar-plate", 30},
      {"kovar-plate", 60},
      {"thorium-ore", 50},
      {"uranium-235", 10},
      {"uranium-238", 50}
    },
    result = "thorium-fuel-cell",
    result_count = 10
  },
  {
    type = "recipe",
    name = "uranium-233-cell",
    subgroup = "sam-recipes",
    energy_required = 100,
    enabled = true,
    ingredients =
    {
      {"titanium5-plate", 20},
      {"havar-plate", 20},
      {"incoloy-plate", 40},
      {"uranium-233", 10}
    },
    result = "uranium-233-cell",
    result_count = 20
  },
  {
    type = "recipe",
    name = "thorium-fuel-reprocessing",
    energy_required = 10,
    enabled = true,
    category = "centrifuging",
    ingredients = {{"used-up-thorium-fuel-cell", 1}},
    icon = "__base__/graphics/icons/nuclear-fuel-reprocessing.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "metallurgy-processes",
    order = "r[uranium-processing]-b[nuclear-fuel-reprocessing]",
    main_product = "",
    results = {{"uranium-233", 4}},
    allow_decomposition = false
  },

  --Magnetic Age
  
  --Oil related Age

  {
    type = "recipe",
    name = "oil-shale-refining",
    icon = "__base__/graphics/icons/fluid/coal-liquefaction.png",
    category = "oil-processing",
    subgroup = "metallurgy-processes",
    enabled = true,
    energy_required = 5,
    ingredients = {{"oil-shale", 10},{type="fluid", name="steam", amount=100}},
    results = --other resources include aluminum, magnesium, silicon - Check Oil Shale
    {
      {
        name = "stone-debris",
        amount = 20
      },
      {
        type="fluid",
        name="crude-oil",
        amount=100,
      },
      {
        name = "sulfur",
        probability = 0.1,
        amount = 4
      },
      {
        name = "magnetite-ore",
        probability = 0.2,
        amount = 10
      },
      {
        name = "coal",
        probability = 0.4,
        amount = 10
      }
    },
    icon_size = 64
  },

  --Recycle Ores
  {
    type = "recipe",
    name = "decaying-matter-cell",
    icon = "__base__/graphics/icons/used-up-uranium-fuel-cell.png",
    category = "crafting",
    subgroup = "sam-recipes",
    enabled = true,
    energy_required = 10,
    ingredients = 
    {
      {"used-up-uranium-fuel-cell", 1},
      {"thorium-ore", 20},
      {"havar-plate", 10},
      {"kovar-plate", 20},
      {"duralumin-plate", 20},
    },
    result = "decaying-matter-cell",
    result_count = 10,
    icon_size = 64
  },
  {
    type = "recipe",
    name = "aluminum-transmutation",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/aluminum-ore.png",
    category = "centrifuging",
    subgroup = "metallurgy-processes",
    enabled = true,
    energy_required = 300,
    ingredients = {{"decaying-matter-cell", 1},{"aluminum-ore", 2000}},
    results = 
    {
      {"used-up-thorium-fuel-cell", 1},
      {
        name = "titanium-ore",
        probability = 1,
        amount_min = 100,
        amount_max = 500
      },
      {
        name = "bauxite-ore",
        probability = 1,
        amount_min = 100,
        amount_max = 500
      },
      {
        name = "laterite-ore",
        probability = 1,
        amount_min = 200,
        amount_max = 1000
      },
    },
    icon_size = 64
  },
  {
    type = "recipe",
    name = "cobalt-transmutation",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/cobalt-ore.png",
    category = "centrifuging",
    subgroup = "metallurgy-processes",
    enabled = true,
    energy_required = 300,
    ingredients = {{"decaying-matter-cell", 1},{"cobalt-ore", 2000}},
    results = 
    {
      {"used-up-thorium-fuel-cell", 1},
      {
        name = "nickel-ore",
        probability = 1,
        amount_min = 100,
        amount_max = 500
      },
      {
        name = "cobaltite-ore",
        probability = 1,
        amount_min = 100,
        amount_max = 500
      },
      {
        name = "laterite-ore",
        probability = 1,
        amount_min = 200,
        amount_max = 1000
      },
    },
    icon_size = 64
  },
  {
    type = "recipe",
    name = "samarium-transmutation",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/samarium-ore.png",
    category = "centrifuging",
    subgroup = "metallurgy-processes",
    enabled = true,
    energy_required = 300,
    ingredients = {{"decaying-matter-cell", 1},{"samarium-ore", 2000}},
    results = 
    {
      {"used-up-thorium-fuel-cell", 1},
      {
        name = "uranium-ore",
        probability = 1,
        amount_min = 100,
        amount_max = 500
      },
      {
        name = "thorium-ore",
        probability = 1,
        amount_min = 100,
        amount_max = 500
      },
      {
        name = "monazite-ore",
        probability = 1,
        amount_min = 200,
        amount_max = 1000
      },
    },
    icon_size = 64
  },
  {
    type = "recipe",
    name = "neodymium-transmutation",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/neodymium-ore.png",
    category = "centrifuging",
    subgroup = "metallurgy-processes",
    enabled = true,
    energy_required = 300,
    ingredients = {{"decaying-matter-cell", 1},{"neodymium-ore", 2000}},
    results = 
    {
      {"used-up-thorium-fuel-cell", 1},
      {
        name = "uranium-ore",
        probability = 1,
        amount_min = 100,
        amount_max = 500
      },
      {
        name = "thorium-ore",
        probability = 1,
        amount_min = 100,
        amount_max = 500
      },
      {
        name = "monazite-ore",
        probability = 1,
        amount_min = 200,
        amount_max = 1000
      },
    },
    icon_size = 64
  },
  {
    type = "recipe",
    name = "bauxite-recycling",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/bauxite-ore.png",
    category = "crafting",
    subgroup = "metallurgy-processes",
    enabled = true,
    energy_required = 1,
    ingredients = {{"bauxite-ore", 8}},
    results =
    {
      {"laterite-ore", 8}
    },
    icon_size = 64
  },
  {
    type = "recipe",
    name = "cobaltite-recycling",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/cobaltite-ore.png",
    category = "crafting",
    subgroup = "metallurgy-processes",
    enabled = true,
    energy_required = 1,
    ingredients = {{"cobalt-ore", 8}},
    results =
    {
      {"laterite-ore", 8}
    },
    icon_size = 64
  },
  {
    
    type = "recipe",
    name = "bulk-drone",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/misc/construction-robo-ico.png",
    category = "advanced-crafting",
    subgroup = "logistic-network",
    enabled = true,
    energy_required = 20,
    ingredients = {{"titanium-plate", 8},{"kovar-plate", 10},{"bronze-plate", 25},{"logistic-robot", 4},{"accumulator", 1}},
      results =
      {
        {"bulk-drone", 1}
      },
    icon_size = 32
  },
  {
    type = "recipe",
    name = "stone-reprocessing",
    energy_required = 20,
    enabled = true,
    category = "centrifuging",
    ingredients = {{"stone-debris", 20}},
    icon = "__base__/graphics/icons/stone.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "metallurgy-processes",
    order = "",
    main_product = "",
    results = 
    {
      {
        name = "stone-debris",
        probability = 0.05,
        amount = 20
      },
      {
        name = "uranium-ore",
        probability = 0.1,
        amount = 5
      },
      {
        name = "magnetite-ore",
        probability = 0.1,
        amount = 5
      },
      {
        name = "malachite-ore",
        probability = 0.1,
        amount = 5
      },
      {
        name = "nickel-ore",
        probability = 0.1,
        amount = 5
      },
      {
        name = "cobalt-ore",
        probability = 0.1,
        amount = 5
      },
      {
        name = "aluminum-ore",
        probability = 0.1,
        amount = 5
      },
      {
        name = "neodymium-ore",
        probability = 0.1,
        amount = 5
      },
      {
        name = "titanium-ore",
        probability = 0.1,
        amount = 5
      },
      {
        name = "thorium-ore",
        probability = 0.1,
        amount = 5
      },
      {
        name = "chromite-ore",
        probability = 0.1,
        amount = 5
      },
      {
        name = "samarium-ore",
        probability = 0.1,
        amount = 5
      },
    },
    allow_decomposition = false
  },

    --Fluids
    

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