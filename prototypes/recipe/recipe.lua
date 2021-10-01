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
        probability = 0.45,
        amount = 20
      },
      {
        name = "thorium-ore",
        probability = 0.05,
        amount = 5
      },
      {
        name = "chromite-ore",
        probability = 0.5,
        amount = 5
      }
    },
    icon_size = 64
  },
  {
    type = "recipe",
    name = "carbonatite-refining",
    icon = "__base__/graphics/icons/coal.png",
    category = "crafting",
    subgroup = "metallurgy-processes",
    enabled = true,
    energy_required = 8,
    ingredients = {{"carbonatite-ore", 10}},
    results =
    {
      {
        name = "samarium-ore",
        probability = 1,
        amount = 5
      },
      {
        name = "neodymium-ore",
        probability = 1,
        amount = 5
      }
    },
    icon_size = 64
  },
  {
    type = "recipe",
    name = "galena-refining",
    icon = "__base__/graphics/icons/coal.png",
    category = "crafting",
    subgroup = "metallurgy-processes",
    enabled = true,
    energy_required = 8,
    ingredients = {{"galena-ore", 10}},
    results =
    {
      {
        name = "lead-ore",
        probability = 1,
        amount = 5
      },
      {
        name = "tin-ore",
        probability = 1,
        amount = 5
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
  {
    type = "recipe",
    name = "chemical-refinery",
    icon = "__base__/graphics/icons/oil-refinery.png",
    category = "crafting",
    subgroup = "sam-recipes",
    enabled = true,
    energy_required = 12,
    ingredients = {{"duralumin-plate", 30}, {"kovar-plate", 10}, {"titanium-plate", 20}, {"concrete", 50}},
    results =
    {
      {"chemical-refinery", 1}
    },
    icon_size = 64
  },
   --Metallurgy Stages

   --Magnetite Purification (RAW)
   {
    type = "recipe",
    name = "magnetite-rock",
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
    result = "magnetite-rock",
    result_count = 3
  },
  {
    type = "recipe",
    name = "magnetite-chunk",
    category = "alloy-smelting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
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
    name = "crushed-magnetite",
    category = "basic-crafting",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"magnetite-chunk", 2}
    },
    result = "crushed-magnetite",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-magnetite-ore",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"crushed-magnetite", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-magnetite-ore",
    result_count = 3
  },
   --Magnetite Purification (CHEMICAL)
   {
    type = "recipe",
    name = "magnetite-slurry",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"magnetite-ore", 4}
    },
    results =
    {
       {type="fluid", name="magnetite-slurry", amount=50}
    },
  },
  {
    type = "recipe",
    name = "magnetite-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {type="fluid", name="magnetite-slurry", amount=50}
    },
    result = "magnetite-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-magnetite-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"magnetite-shard", 2},
      {type="fluid", name="water", amount=25},
      {type="fluid", name="steam", amount=10}
    },
    result = "purified-magnetite-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-magnetite-ore-chemical",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"purified-magnetite-shard", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-magnetite-ore",
    result_count = 3
  },
   --Magnetite Purification (POWDER)
   {
    type = "recipe",
    name = "magnetite-powder",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"magnetite-ore", 4}
    },
    result = "magnetite-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "refined-magnetite-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"magnetite-powder", 2},
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
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"refined-magnetite-powder", 2},
      {type="fluid", name="steam", amount=50}
    },
    result = "pure-magnetite-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-magnetite-ore-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/magnetite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"pure-magnetite-powder", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-magnetite-ore",
    result_count = 3
  },

   --Malachite Refining
   --Malachite Purification (RAW)
      {
        type = "recipe",
        name = "malachite-rock",
        category = "crafting",
        subgroup = "metallurgy-processes",
        order = "aa",
        icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
        icon_size = 64, icon_mipmaps = 4,
        energy_required = 8,
        enabled = true,
        ingredients =
        {
          {"malachite-ore", 4}
        },
        result = "malachite-rock",
        result_count = 3
      },
      {
        type = "recipe",
        name = "malachite-chunk",
        category = "alloy-smelting",
        subgroup = "metallurgy-processes",
        order = "ab",
        icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
        icon_size = 64, icon_mipmaps = 4,
        energy_required = 4,
        enabled = true,
        ingredients =
        {
          {"malachite-rock", 2},
          {"sulfur", 4}
        },
        result = "malachite-chunk",
        result_count = 3
      },
      {
        type = "recipe",
        name = "crushed-malachite",
        category = "basic-crafting",
        subgroup = "metallurgy-processes",
        order = "ac",
        icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
        icon_size = 64, icon_mipmaps = 4,
        energy_required = 4,
        enabled = true,
        ingredients =
        {
          {"malachite-chunk", 2}
        },
        result = "crushed-malachite",
        result_count = 3
      },
      {
        type = "recipe",
        name = "pure-malachite-ore",
        category = "chemistry",
        subgroup = "metallurgy-processes",
        order = "ad",
        icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
        icon_size = 64, icon_mipmaps = 4,
        energy_required = 4,
        enabled = true,
        ingredients =
        {
          {"crushed-malachite", 1},
          {type="fluid", name="water", amount=10},
          {type="fluid", name="sulfuric-acid", amount=10}
        },
        result = "pure-malachite-ore",
        result_count = 3
      },
       --Malachite Purification (CHEMICAL)
       {
        type = "recipe",
        name = "malachite-slurry",
        category = "chemistry",
        subgroup = "metallurgy-processes",
        order = "ab",
        icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
        icon_size = 64, icon_mipmaps = 4,
        energy_required = 8,
        enabled = true,
        ingredients =
        {
          {"malachite-ore", 4}
        },
        results =
        {
           {type="fluid", name="malachite-slurry", amount=50}
        },
      },
      {
        type = "recipe",
        name = "malachite-shard",
        category = "chemistry",
        subgroup = "metallurgy-processes",
        order = "ab",
        icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
        icon_size = 64, icon_mipmaps = 4,
        energy_required = 4,
        enabled = true,
        ingredients =
        {
          {type="fluid", name="malachite-slurry", amount=50}
        },
        result = "malachite-shard",
        result_count = 3
      },
      {
        type = "recipe",
        name = "pure-malachite-shard",
        category = "chemistry",
        subgroup = "metallurgy-processes",
        order = "ad",
        icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
        icon_size = 64, icon_mipmaps = 4,
        energy_required = 4,
        enabled = true,
        ingredients =
        {
          {"malachite-shard", 2},
          {type="fluid", name="water", amount=25},
          {type="fluid", name="steam", amount=10}
        },
        result = "purified-malachite-shard",
        result_count = 3
      },
      {
        type = "recipe",
        name = "pure-malachite-ore-chemical",
        category = "chemistry",
        subgroup = "metallurgy-processes",
        order = "ad",
        icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
        icon_size = 64, icon_mipmaps = 4,
        energy_required = 4,
        enabled = true,
        ingredients =
        {
          {"purified-malachite-shard", 1},
          {type="fluid", name="water", amount=10},
          {type="fluid", name="sulfuric-acid", amount=10}
        },
        result = "pure-malachite-ore",
        result_count = 3
      },
       --Malachite Purification (POWDER)
       {
        type = "recipe",
        name = "malachite-powder",
        category = "crafting",
        subgroup = "metallurgy-processes",
        order = "ab",
        icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
        icon_size = 64, icon_mipmaps = 4,
        energy_required = 8,
        enabled = true,
        ingredients =
        {
          {"malachite-ore", 4}
        },
        result = "malachite-powder",
        result_count = 3
      },
      {
        type = "recipe",
        name = "refined-malachite-powder",
        category = "chemistry",
        subgroup = "metallurgy-processes",
        order = "ac",
        icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
        icon_size = 64, icon_mipmaps = 4,
        energy_required = 4,
        enabled = true,
        ingredients =
        {
          {"malachite-powder", 2},
          {type="fluid", name="water", amount=25}
        },
        result = "refined-malachite-powder",
        result_count = 3
      },
      {
        type = "recipe",
        name = "pure-malachite-powder",
        category = "chemistry",
        subgroup = "metallurgy-processes",
        order = "ad",
        icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
        icon_size = 64, icon_mipmaps = 4,
        energy_required = 4,
        enabled = true,
        ingredients =
        {
          {"refined-malachite-powder", 2},
          {type="fluid", name="steam", amount=50}
        },
        result = "pure-malachite-powder",
        result_count = 3
      },
      {
        type = "recipe",
        name = "pure-malachite-ore-powder",
        category = "chemistry",
        subgroup = "metallurgy-processes",
        order = "ad",
        icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/malachite-ore.png",
        icon_size = 64, icon_mipmaps = 4,
        energy_required = 4,
        enabled = true,
        ingredients =
        {
          {"pure-malachite-powder", 1},
          {type="fluid", name="water", amount=10},
          {type="fluid", name="sulfuric-acid", amount=10}
        },
        result = "pure-malachite-ore",
        result_count = 3
      },
  --Nickel Refining
   --Nickel Purification (RAW)
   {
    type = "recipe",
    name = "nickel-rock",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "aa",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/nickel-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"nickel-ore", 4}
    },
    result = "nickel-rock",
    result_count = 3
  },
  {
    type = "recipe",
    name = "nickel-chunk",
    category = "alloy-smelting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/nickel-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"nickel-rock", 2},
      {"sulfur", 4}
    },
    result = "nickel-chunk",
    result_count = 3
  },
  {
    type = "recipe",
    name = "crushed-nickel",
    category = "basic-crafting",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/nickel-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"nickel-chunk", 2}
    },
    result = "crushed-nickel",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-nickel-ore",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/nickel-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"crushed-nickel", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-nickel-ore",
    result_count = 3
  },
   --Nickel Purification (CHEMICAL)
   {
    type = "recipe",
    name = "nickel-slurry",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/nickel-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"nickel-ore", 4}
    },
    results =
    {
       {type="fluid", name="nickel-slurry", amount=50}
    },
  },
  {
    type = "recipe",
    name = "nickel-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/nickel-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {type="fluid", name="nickel-slurry", amount=50}
    },
    result = "nickel-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-nickel-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/nickel-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"nickel-shard", 2},
      {type="fluid", name="water", amount=25},
      {type="fluid", name="steam", amount=10}
    },
    result = "purified-nickel-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-nickel-ore-chemical",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/nickel-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"purified-nickel-shard", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-nickel-ore",
    result_count = 3
  },
   --Nickel Purification (POWDER)
   {
    type = "recipe",
    name = "nickel-powder",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/nickel-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"nickel-ore", 4}
    },
    result = "nickel-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "refined-nickel-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/nickel-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"nickel-powder", 2},
      {type="fluid", name="water", amount=25}
    },
    result = "refined-nickel-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-nickel-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/nickel-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"refined-nickel-powder", 2},
      {type="fluid", name="steam", amount=50}
    },
    result = "pure-nickel-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-nickel-ore-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/nickel-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"pure-nickel-powder", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-nickel-ore",
    result_count = 3
  },  
  --Cobalt Refining
   --Cobalt Purification (RAW)
   {
    type = "recipe",
    name = "cobalt-rock",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "aa",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/cobalt-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"cobalt-ore", 4}
    },
    result = "cobalt-rock",
    result_count = 3
  },
  {
    type = "recipe",
    name = "cobalt-chunk",
    category = "alloy-smelting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/cobalt-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"cobalt-rock", 2},
      {"sulfur", 4}
    },
    result = "cobalt-chunk",
    result_count = 3
  },
  {
    type = "recipe",
    name = "crushed-cobalt",
    category = "basic-crafting",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/cobalt-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"cobalt-chunk", 2}
    },
    result = "crushed-cobalt",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-cobalt-ore",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/cobalt-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"crushed-cobalt", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-cobalt-ore",
    result_count = 3
  },
   --Cobalt Purification (CHEMICAL)
   {
    type = "recipe",
    name = "cobalt-slurry",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/cobalt-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"cobalt-ore", 4}
    },
    results =
    {
       {type="fluid", name="cobalt-slurry", amount=50}
    },
  },
  {
    type = "recipe",
    name = "cobalt-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/cobalt-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {type="fluid", name="cobalt-slurry", amount=50}
    },
    result = "cobalt-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-cobalt-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/cobalt-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"cobalt-shard", 2},
      {type="fluid", name="water", amount=25},
      {type="fluid", name="steam", amount=10}
    },
    result = "purified-cobalt-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-cobalt-ore-chemical",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/cobalt-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"purified-cobalt-shard", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-cobalt-ore",
    result_count = 3
  },
   --Cobalt Purification (POWDER)
   {
    type = "recipe",
    name = "cobalt-powder",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/cobalt-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"cobalt-ore", 4}
    },
    result = "cobalt-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "refined-cobalt-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/cobalt-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"cobalt-powder", 2},
      {type="fluid", name="water", amount=25}
    },
    result = "refined-cobalt-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-cobalt-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/cobalt-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"refined-cobalt-powder", 2},
      {type="fluid", name="steam", amount=50}
    },
    result = "pure-cobalt-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-cobalt-ore-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/cobalt-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"pure-cobalt-powder", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-cobalt-ore",
    result_count = 3
  },
  --Aluminum Refining
   --Aluminum Purification (RAW)
   {
    type = "recipe",
    name = "aluminum-rock",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "aa",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/aluminum-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"aluminum-ore", 4}
    },
    result = "aluminum-rock",
    result_count = 3
  },
  {
    type = "recipe",
    name = "aluminum-chunk",
    category = "alloy-smelting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/aluminum-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"aluminum-rock", 2},
      {"sulfur", 4}
    },
    result = "aluminum-chunk",
    result_count = 3
  },
  {
    type = "recipe",
    name = "crushed-aluminum",
    category = "basic-crafting",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/aluminum-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"aluminum-chunk", 2}
    },
    result = "crushed-aluminum",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-aluminum-ore",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/aluminum-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"crushed-aluminum", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-aluminum-ore",
    result_count = 3
  },
   --Aluminum Purification (CHEMICAL)
   {
    type = "recipe",
    name = "aluminum-slurry",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/aluminum-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"aluminum-ore", 4}
    },
    results =
    {
       {type="fluid", name="aluminum-slurry", amount=50}
    },
  },
  {
    type = "recipe",
    name = "aluminum-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/aluminum-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {type="fluid", name="aluminum-slurry", amount=50}
    },
    result = "aluminum-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-aluminum-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/aluminum-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"aluminum-shard", 2},
      {type="fluid", name="water", amount=25},
      {type="fluid", name="steam", amount=10}
    },
    result = "purified-aluminum-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-aluminum-ore-chemical",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/aluminum-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"purified-aluminum-shard", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-aluminum-ore",
    result_count = 3
  },
   --Aluminum Purification (POWDER)
   {
    type = "recipe",
    name = "aluminum-powder",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/aluminum-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"aluminum-ore", 4}
    },
    result = "aluminum-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "refined-aluminum-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/aluminum-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"aluminum-powder", 2},
      {type="fluid", name="water", amount=25}
    },
    result = "refined-aluminum-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-aluminum-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/aluminum-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"refined-aluminum-powder", 2},
      {type="fluid", name="steam", amount=50}
    },
    result = "pure-aluminum-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-aluminum-ore-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/aluminum-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"pure-aluminum-powder", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-aluminum-ore",
    result_count = 3
  },
  --Titanium Refining
   --Titanium Purification (RAW)
   {
    type = "recipe",
    name = "titanium-rock",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "aa",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/titanium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"titanium-ore", 4}
    },
    result = "titanium-rock",
    result_count = 3
  },
  {
    type = "recipe",
    name = "titanium-chunk",
    category = "alloy-smelting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/titanium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"titanium-rock", 2},
      {"sulfur", 4}
    },
    result = "titanium-chunk",
    result_count = 3
  },
  {
    type = "recipe",
    name = "crushed-titanium",
    category = "basic-crafting",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/titanium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"titanium-chunk", 2}
    },
    result = "crushed-titanium",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-titanium-ore",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/titanium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"crushed-titanium", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-titanium-ore",
    result_count = 3
  },
   --Titanium Purification (CHEMICAL)
   {
    type = "recipe",
    name = "titanium-slurry",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/titanium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"titanium-ore", 4}
    },
    results =
    {
       {type="fluid", name="titanium-slurry", amount=50}
    },
  },
  {
    type = "recipe",
    name = "titanium-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/titanium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {type="fluid", name="titanium-slurry", amount=50}
    },
    result = "titanium-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-titanium-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/titanium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"titanium-shard", 2},
      {type="fluid", name="water", amount=25},
      {type="fluid", name="steam", amount=10}
    },
    result = "purified-titanium-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-titanium-ore-chemical",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/titanium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"purified-titanium-shard", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-titanium-ore",
    result_count = 3
  },
   --Titanium Purification (POWDER)
   {
    type = "recipe",
    name = "titanium-powder",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/titanium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"titanium-ore", 4}
    },
    result = "titanium-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "refined-titanium-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/titanium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"titanium-powder", 2},
      {type="fluid", name="water", amount=25}
    },
    result = "refined-titanium-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-titanium-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/titanium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"refined-titanium-powder", 2},
      {type="fluid", name="steam", amount=50}
    },
    result = "pure-titanium-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-titanium-ore-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/titanium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"pure-titanium-powder", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-titanium-ore",
    result_count = 3
  },
  --Chromite Refining
   --Chromite Purification (RAW)
   {
    type = "recipe",
    name = "chromium-rock",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "aa",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/chromite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"chromite-ore", 4}
    },
    result = "chromium-rock",
    result_count = 3
  },
  {
    type = "recipe",
    name = "chromium-chunk",
    category = "alloy-smelting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/chromite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"chromium-rock", 2},
      {"sulfur", 4}
    },
    result = "chromium-chunk",
    result_count = 3
  },
  {
    type = "recipe",
    name = "crushed-chromium",
    category = "basic-crafting",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/chromite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"chromium-chunk", 2}
    },
    result = "crushed-chromium",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-chromium-ore",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/chromite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"crushed-chromium", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-chromium-ore",
    result_count = 3
  },
   --Chromite Purification (CHEMICAL)
   {
    type = "recipe",
    name = "chromium-slurry",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/chromite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"chromite-ore", 4}
    },
    results =
    {
       {type="fluid", name="chromium-slurry", amount=50}
    },
  },
  {
    type = "recipe",
    name = "chromium-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/chromite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {type="fluid", name="chromium-slurry", amount=50}
    },
    result = "chromium-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-chromium-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/chromite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"chromium-shard", 2},
      {type="fluid", name="water", amount=25},
      {type="fluid", name="steam", amount=10}
    },
    result = "purified-chromium-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-chromium-ore-chemical",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/chromite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"purified-chromium-shard", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-chromium-ore",
    result_count = 3
  },
   --Chromite Purification (POWDER)
   {
    type = "recipe",
    name = "chromium-powder",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/chromite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"chromite-ore", 4}
    },
    result = "chromium-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "refined-chromium-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/chromite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"chromium-powder", 2},
      {type="fluid", name="water", amount=25}
    },
    result = "refined-chromium-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-chromium-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/chromite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"refined-chromium-powder", 2},
      {type="fluid", name="steam", amount=50}
    },
    result = "pure-chromium-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-chromium-ore-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/chromite-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"pure-chromium-powder", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-chromium-ore",
    result_count = 3
  },
  --Lead Refining
   --Lead Purification (RAW)
   {
    type = "recipe",
    name = "lead-rock",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "aa",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/lead-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"lead-ore", 4}
    },
    result = "lead-rock",
    result_count = 3
  },
  {
    type = "recipe",
    name = "lead-chunk",
    category = "alloy-smelting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/lead-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"lead-rock", 2},
      {"sulfur", 4}
    },
    result = "lead-chunk",
    result_count = 3
  },
  {
    type = "recipe",
    name = "crushed-lead",
    category = "basic-crafting",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/lead-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"lead-chunk", 2}
    },
    result = "crushed-lead",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-lead-ore",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/lead-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"crushed-lead", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-lead-ore",
    result_count = 3
  },
   --Lead Purification (CHEMICAL)
   {
    type = "recipe",
    name = "lead-slurry",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/lead-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"lead-ore", 4}
    },
    results =
    {
       {type="fluid", name="lead-slurry", amount=50}
    },
  },
  {
    type = "recipe",
    name = "lead-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/lead-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {type="fluid", name="lead-slurry", amount=50}
    },
    result = "lead-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-lead-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/lead-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"lead-shard", 2},
      {type="fluid", name="water", amount=25},
      {type="fluid", name="steam", amount=10}
    },
    result = "purified-lead-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-lead-ore-chemical",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/lead-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"purified-lead-shard", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-lead-ore",
    result_count = 3
  },
   --Lead Purification (POWDER)
   {
    type = "recipe",
    name = "lead-powder",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/lead-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"lead-ore", 4}
    },
    result = "lead-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "refined-lead-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/lead-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"lead-powder", 2},
      {type="fluid", name="water", amount=25}
    },
    result = "refined-lead-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-lead-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/lead-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"refined-lead-powder", 2},
      {type="fluid", name="steam", amount=50}
    },
    result = "pure-lead-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-lead-ore-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/lead-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"pure-lead-powder", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-lead-ore",
    result_count = 3
  },
  --Tin Refining
   --Tin Purification (RAW)
   {
    type = "recipe",
    name = "tin-rock",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "aa",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/tin-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"tin-ore", 4}
    },
    result = "tin-rock",
    result_count = 3
  },
  {
    type = "recipe",
    name = "tin-chunk",
    category = "alloy-smelting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/tin-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"tin-rock", 2},
      {"sulfur", 4}
    },
    result = "tin-chunk",
    result_count = 3
  },
  {
    type = "recipe",
    name = "crushed-tin",
    category = "basic-crafting",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/tin-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"tin-chunk", 2}
    },
    result = "crushed-tin",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-tin-ore",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/tin-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"crushed-tin", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-tin-ore",
    result_count = 3
  },
   --Tin Purification (CHEMICAL)
   {
    type = "recipe",
    name = "tin-slurry",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/tin-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"tin-ore", 4}
    },
    results =
    {
       {type="fluid", name="tin-slurry", amount=50}
    },
  },
  {
    type = "recipe",
    name = "tin-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/tin-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {type="fluid", name="tin-slurry", amount=50}
    },
    result = "tin-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-tin-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/tin-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"tin-shard", 2},
      {type="fluid", name="water", amount=25},
      {type="fluid", name="steam", amount=10}
    },
    result = "purified-tin-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-tin-ore-chemical",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/tin-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"purified-tin-shard", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-tin-ore",
    result_count = 3
  },
   --Tin Purification (POWDER)
   {
    type = "recipe",
    name = "tin-powder",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/tin-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"tin-ore", 4}
    },
    result = "tin-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "refined-tin-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/tin-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"tin-powder", 2},
      {type="fluid", name="water", amount=25}
    },
    result = "refined-tin-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-tin-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/tin-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"refined-tin-powder", 2},
      {type="fluid", name="steam", amount=50}
    },
    result = "pure-tin-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-tin-ore-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/tin-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"pure-tin-powder", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-tin-ore",
    result_count = 3
  },
  --Thorium Refining
   --Thorium Purification (RAW)
   {
    type = "recipe",
    name = "thorium-rock",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "aa",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/thorium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"thorium-ore", 4}
    },
    result = "thorium-rock",
    result_count = 3
  },
  {
    type = "recipe",
    name = "thorium-chunk",
    category = "alloy-smelting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/thorium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"thorium-rock", 2},
      {"sulfur", 4}
    },
    result = "thorium-chunk",
    result_count = 3
  },
  {
    type = "recipe",
    name = "crushed-thorium",
    category = "basic-crafting",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/thorium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"thorium-chunk", 2}
    },
    result = "crushed-thorium",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-thorium-ore",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/thorium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"crushed-thorium", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-thorium-ore",
    result_count = 3
  },
   --Thorium Purification (CHEMICAL)
   {
    type = "recipe",
    name = "thorium-slurry",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/thorium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"thorium-ore", 4}
    },
    results =
    {
       {type="fluid", name="thorium-slurry", amount=50}
    },
  },
  {
    type = "recipe",
    name = "thorium-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/thorium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {type="fluid", name="thorium-slurry", amount=50}
    },
    result = "thorium-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-thorium-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/thorium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"thorium-shard", 2},
      {type="fluid", name="water", amount=25},
      {type="fluid", name="steam", amount=10}
    },
    result = "purified-thorium-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-thorium-ore-chemical",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/thorium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"purified-thorium-shard", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-thorium-ore",
    result_count = 3
  },
   --Thorium Purification (POWDER)
   {
    type = "recipe",
    name = "thorium-powder",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/thorium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"thorium-ore", 4}
    },
    result = "thorium-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "refined-thorium-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/thorium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"thorium-powder", 2},
      {type="fluid", name="water", amount=25}
    },
    result = "refined-thorium-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-thorium-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/thorium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"refined-thorium-powder", 2},
      {type="fluid", name="steam", amount=50}
    },
    result = "pure-thorium-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-thorium-ore-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/thorium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"pure-thorium-powder", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-thorium-ore",
    result_count = 3
  },
  --Samarium Refining
   --Samarium Purification (RAW)
   {
    type = "recipe",
    name = "samarium-rock",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "aa",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/samarium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"samarium-ore", 4}
    },
    result = "samarium-rock",
    result_count = 3
  },
  {
    type = "recipe",
    name = "samarium-chunk",
    category = "alloy-smelting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/samarium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"samarium-rock", 2},
      {"sulfur", 4}
    },
    result = "samarium-chunk",
    result_count = 3
  },
  {
    type = "recipe",
    name = "crushed-samarium",
    category = "basic-crafting",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/samarium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"samarium-chunk", 2}
    },
    result = "crushed-samarium",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-samarium-ore",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/samarium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"crushed-samarium", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-samarium-ore",
    result_count = 3
  },
   --Samarium Purification (CHEMICAL)
   {
    type = "recipe",
    name = "samarium-slurry",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/samarium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"samarium-ore", 4}
    },
    results =
    {
       {type="fluid", name="samarium-slurry", amount=50}
    },
  },
  {
    type = "recipe",
    name = "samarium-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/samarium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {type="fluid", name="samarium-slurry", amount=50}
    },
    result = "samarium-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-samarium-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/samarium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"samarium-shard", 2},
      {type="fluid", name="water", amount=25},
      {type="fluid", name="steam", amount=10}
    },
    result = "purified-samarium-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-samarium-ore-chemical",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/samarium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"purified-samarium-shard", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-samarium-ore",
    result_count = 3
  },
   --Samarium Purification (POWDER)
   {
    type = "recipe",
    name = "samarium-powder",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/samarium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"samarium-ore", 4}
    },
    result = "samarium-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "refined-samarium-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/samarium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"samarium-powder", 2},
      {type="fluid", name="water", amount=25}
    },
    result = "refined-samarium-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-samarium-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/samarium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"refined-samarium-powder", 2},
      {type="fluid", name="steam", amount=50}
    },
    result = "pure-samarium-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-samarium-ore-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/samarium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"pure-samarium-powder", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-samarium-ore",
    result_count = 3
  },
  --Neodymium Refining
   --Neodymium Purification (RAW)
   {
    type = "recipe",
    name = "neodymium-rock",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "aa",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/neodymium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"neodymium-ore", 4}
    },
    result = "neodymium-rock",
    result_count = 3
  },
  {
    type = "recipe",
    name = "neodymium-chunk",
    category = "alloy-smelting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/neodymium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"neodymium-rock", 2},
      {"sulfur", 4}
    },
    result = "neodymium-chunk",
    result_count = 3
  },
  {
    type = "recipe",
    name = "crushed-neodymium",
    category = "basic-crafting",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/neodymium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"neodymium-chunk", 2}
    },
    result = "crushed-neodymium",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-neodymium-ore",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/neodymium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"crushed-neodymium", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-neodymium-ore",
    result_count = 3
  },
   --Neodymium Purification (CHEMICAL)
   {
    type = "recipe",
    name = "neodymium-slurry",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/neodymium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"neodymium-ore", 4}
    },
    results =
    {
       {type="fluid", name="neodymium-slurry", amount=50}
    },
  },
  {
    type = "recipe",
    name = "neodymium-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/neodymium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {type="fluid", name="neodymium-slurry", amount=50}
    },
    result = "neodymium-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-neodymium-shard",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/neodymium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"neodymium-shard", 2},
      {type="fluid", name="water", amount=25},
      {type="fluid", name="steam", amount=10}
    },
    result = "purified-neodymium-shard",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-neodymium-ore-chemical",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/neodymium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"purified-neodymium-shard", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-neodymium-ore",
    result_count = 3
  },
   --Neodymium Purification (POWDER)
   {
    type = "recipe",
    name = "neodymium-powder",
    category = "crafting",
    subgroup = "metallurgy-processes",
    order = "ab",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/neodymium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"neodymium-ore", 4}
    },
    result = "neodymium-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "refined-neodymium-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ac",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/neodymium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"neodymium-powder", 2},
      {type="fluid", name="water", amount=25}
    },
    result = "refined-neodymium-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-neodymium-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/neodymium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"refined-neodymium-powder", 2},
      {type="fluid", name="steam", amount=50}
    },
    result = "pure-neodymium-powder",
    result_count = 3
  },
  {
    type = "recipe",
    name = "pure-neodymium-ore-powder",
    category = "chemistry",
    subgroup = "metallurgy-processes",
    order = "ad",
    icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/neodymium-ore.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 4,
    enabled = true,
    ingredients =
    {
      {"pure-neodymium-powder", 1},
      {type="fluid", name="water", amount=10},
      {type="fluid", name="sulfuric-acid", amount=10}
    },
    result = "pure-neodymium-ore",
    result_count = 3
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
        name="chemical-oil",
        amount=100,
      },
      {
        name = "sulfur",
        probability = 0.1,
        amount = 4
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

    --Fluids, Chemistry
    
    {
      type = "recipe",
      name = "motor-oil",
      category = "oil-processing",
      subgroup = "sam-fluid-recipes",
      order = "ba",
      icon = "__base__/graphics/icons/fluid/water.png",
      icon_size = 64, icon_mipmaps = 4,
      energy_required = 20,
      enabled = true,
      ingredients =
      {
        {type="fluid", name="lubricant", amount=20},
        {type="fluid", name="light-oil", amount=20},
        {type="fluid", name="water", amount=50}
      },
      results =
      {
        {type="fluid", name="motor-oil", amount=50}
      },
    },
    {
      type = "recipe",
      name = "coolant",
      category = "chemistry",
      subgroup = "sam-fluid-recipes",
      order = "ba",
      icon = "__base__/graphics/icons/fluid/water.png",
      icon_size = 64, icon_mipmaps = 4,
      energy_required = 20,
      enabled = true,
      ingredients =
      {
        {type="fluid", name="lubricant", amount=20},
        {type="fluid", name="nitrogen", amount=40}
      },
      results =
      {
        {type="fluid", name="coolant", amount=50}
      },
    },
    {
      type = "recipe",
      name = "chemical-oil-processing",
      category = "oil-processing",
      subgroup = "sam-fluid-recipes",
      order = "ba",
      icon = "__base__/graphics/icons/fluid/water.png",
      icon_size = 64, icon_mipmaps = 4,
      energy_required = 20,
      enabled = true,
      ingredients =
      {
        {type="fluid", name="chemical-oil", amount=50},
        {type="fluid", name="water", amount=50}
        
      },
      results =
      {
        {type="fluid", name="petroleum-gas", amount=50},
        {type="fluid", name="chemical-water", amount=25},
        {type="fluid", name="chemical-gas", amount=25}
      },
    },
    {
      type = "recipe",
      name = "chemical-water-processing",
      category = "oil-processing",
      subgroup = "sam-fluid-recipes",
      order = "ba",
      icon = "__base__/graphics/icons/fluid/water.png",
      icon_size = 64, icon_mipmaps = 4,
      energy_required = 20,
      enabled = true,
      ingredients =
      {
        {type="fluid", name="chemical-water", amount=20},
        {type="fluid", name="water", amount=50}
      },
      results =
      {
        {type="fluid", name="liquid-air", amount=60},
        {type="fluid", name="chlorine", amount=20},
        {type="fluid", name="fluorine", amount=20}
      },
    },
    {
      type = "recipe",
      name = "chemical-gas-processing",
      category = "oil-processing",
      subgroup = "sam-fluid-recipes",
      order = "ba",
      icon = "__base__/graphics/icons/fluid/water.png",
      icon_size = 64, icon_mipmaps = 4,
      energy_required = 20,
      enabled = true,
      ingredients =
      {
        {type="fluid", name="chemical-gas", amount=20},
        {type="fluid", name="water", amount=50}
      },
      results =
      {
        {type="fluid", name="noble-gases", amount=20},
        {type="fluid", name="carbon-dioxide", amount=40},
        {type="fluid", name="oxygen", amount=40}
      },
    },
    {
      type = "recipe",
      name = "liquid-air-processing",
      category = "oil-processing",
      subgroup = "sam-fluid-recipes",
      order = "ba",
      icon = "__base__/graphics/icons/fluid/water.png",
      icon_size = 64, icon_mipmaps = 4,
      energy_required = 20,
      enabled = true,
      ingredients =
      {
        {type="fluid", name="liquid-air", amount=20},
        {type="fluid", name="water", amount=50}
      },
      results =
      {
        {type="fluid", name="nitrogen", amount=20},
        {type="fluid", name="oxygen", amount=20},
        {type="fluid", name="hydrogen", amount=20}
      },
    },
    {
      type = "recipe",
      name = "coolant",
      category = "chemistry",
      subgroup = "sam-fluid-recipes",
      order = "ba",
      icon = "__base__/graphics/icons/fluid/water.png",
      icon_size = 64, icon_mipmaps = 4,
      energy_required = 20,
      enabled = true,
      ingredients =
      {
        {type="fluid", name="lubricant", amount=20},
        {type="fluid", name="nitrogen", amount=40}
      },
      results =
      {
        {type="fluid", name="coolant", amount=50}
      },
    },
    {
      type = "recipe",
      name = "azane-acid",
      category = "oil-processing",
      subgroup = "sam-fluid-recipes",
      order = "ba",
      icon = "__base__/graphics/icons/fluid/water.png",
      icon_size = 64, icon_mipmaps = 4,
      energy_required = 20,
      enabled = true,
      ingredients =
      {
        {type="fluid", name="nitrogen", amount=10},
        {type="fluid", name="hydrogen", amount=30},
        {type="fluid", name="water", amount=20}
      },
      results =
      {
        {type="fluid", name="azane-acid", amount=50}
      },
    },
    {
      type = "recipe",
      name = "carbonic-acid",
      category = "oil-processing",
      subgroup = "sam-fluid-recipes",
      order = "ba",
      icon = "__base__/graphics/icons/fluid/water.png",
      icon_size = 64, icon_mipmaps = 4,
      energy_required = 20,
      enabled = true,
      ingredients =
      {
        {type="fluid", name="hydrogen", amount=20},
        {type="fluid", name="carbon-dioxide", amount=30},
        {type="fluid", name="water", amount=50}
      },
      results =
      {
        {type="fluid", name="carbonic-acid", amount=50}
      },
    },
    {
      type = "recipe",
      name = "nitric-acid",
      category = "oil-processing",
      subgroup = "sam-fluid-recipes",
      order = "ba",
      icon = "__base__/graphics/icons/fluid/water.png",
      icon_size = 64, icon_mipmaps = 4,
      energy_required = 20,
      enabled = true,
      ingredients =
      {
        {type="fluid", name="nitrogen", amount=30},
        {type="fluid", name="hydrogen", amount=10},
        {type="fluid", name="water", amount=20}
      },
      results =
      {
        {type="fluid", name="nitric-acid", amount=50}
      },
    },
    {
      type = "recipe",
      name = "chloric-acid",
      category = "oil-processing",
      subgroup = "sam-fluid-recipes",
      order = "ba",
      icon = "__base__/graphics/icons/fluid/water.png",
      icon_size = 64, icon_mipmaps = 4,
      energy_required = 20,
      enabled = true,
      ingredients =
      {
        {type="fluid", name="hydrogen", amount=10},
        {type="fluid", name="chlorine", amount=10},
        {type="fluid", name="oxygen", amount=30}
      },
      results =
      {
        {type="fluid", name="chloric-acid", amount=50}
      },
    },
    {
      type = "recipe",
      name = "muriatic-acid",
      category = "oil-processing",
      subgroup = "sam-fluid-recipes",
      order = "ba",
      icon = "__base__/graphics/icons/fluid/water.png",
      icon_size = 64, icon_mipmaps = 4,
      energy_required = 20,
      enabled = true,
      ingredients =
      {
        {type="fluid", name="hydrogen", amount=10},
        {type="fluid", name="fluorine", amount=10},
        {type="fluid", name="water", amount=50}
      },
      results =
      {
        {type="fluid", name="muriatic-acid", amount=50}
      },
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