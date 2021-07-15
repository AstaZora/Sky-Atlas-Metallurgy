data:extend(
{
  {
    type = "recipe",
    name = "iron-plate-raw",
    category = "smelting",
    ingredients = {{ "magnetite-ore", 2}},
    results = {{"iron-plate", 1}},
    energy_required = 4,
    enabled = true
  },
  {
    type = "recipe",
    name = "iron-plate",
    category = "smelting",
    ingredients = {{ "iron-ore", 2}},
    results = {{"iron-plate", 1}},
    energy_required = 4,
    enabled = true
  },
  {
    type = "recipe",
    name = "copper-plate-raw",
    category = "smelting",
    ingredients = {{ "malachite-ore", 2}},
    results = {{"copper-plate", 1}},
    energy_required = 4,
    enabled = true
  },
  {
    type = "recipe",
    name = "copper-plate",
    category = "smelting",
    ingredients = {{ "copper-ore", 2}},
    results = {{"copper-plate", 1}},
    energy_required = 4,
    enabled = true
  },
  {
    type = "recipe",
    name = "nickel-plate-raw",
    category = "smelting",
    ingredients = {{ "laterite-ore", 2}},
    results = {{"nickel-plate", 1}},
    energy_required = 4,
    enabled = true
  },
  {
    type = "recipe",
    name = "nickel-plate",
    category = "smelting",
    ingredients = {{ "nickel-ore", 2}},
    results = {{"nickel-plate", 1}},
    energy_required = 4,
    enabled = true
  },
  {
    type = "recipe",
    name = "cobalt-plate-raw",
    category = "smelting",
    ingredients = {{ "cobaltite-ore", 1}},
    results = {{"cobalt-plate", 1}},
    energy_required = 4,
    enabled = true
  },
  {
    type = "recipe",
    name = "cobalt-plate",
    category = "smelting",
    ingredients = {{ "cobalt-ore", 2}},
    results = {{"cobalt-plate", 1}},
    energy_required = 4,
    enabled = true
  },
  {
    type = "recipe",
    name = "aluminum-plate-aluminum",
    category = "smelting",
    ingredients = {{"aluminum-ore", 2}},
    results = {{"aluminum-plate", 1}},
    energy_required = 4,
    enabled = true
  },
  {
    type = "recipe",
    name = "titanium-plate",
    category = "smelting",
    ingredients = {{ "titanium-ore", 2}},
    results = {{"titanium-plate", 1}},
    energy_required = 5,
    enabled = true
  },
  {
    type = "recipe",
    name = "chromium-plate",
    category = "smelting",
    ingredients = {{ "chromite-ore", 2}},
    results = {{"chromium-plate", 1}},
    energy_required = 5,
    enabled = true
  },
  {
    type = "recipe",
    name = "aluminum-plate-bauxite",
    category = "smelting",
    ingredients = {{ "bauxite-ore", 1}},
    results = {{"aluminum-plate", 1}},
    energy_required = 4,
    enabled = true
  },
  {
    type = "recipe",
    name = "chromium-steel",
    category = "alloy-smelting",
    ingredients = {{ "chromium-plate", 2},{"iron-plate", 4}},
    results = {{"chromium-steel", 1}},
    energy_required = 5,
    enabled = true
  },
  {
    type = "recipe",
    name = "invar-plate",
    category = "alloy-smelting",
    ingredients = {{ "nickel-plate", 1},{"iron-plate", 2}},
    results = {{"invar-plate", 1}},
    energy_required = 7.5,
    enabled = true
  },
  {
    type = "recipe",
    name = "incoloy-plate",
    category = "alloy-smelting",
    ingredients = {{ "nickel-plate", 2},{"iron-plate", 1},{"chromium-plate", 1}},
    results = {{"incoloy-plate", 1}},
    energy_required = 7.5,
    enabled = true
  },
  {
    type = "recipe",
    name = "monel-plate",
    category = "alloy-smelting",
    ingredients = {{ "nickel-plate", 2},{"copper-plate", 1}},
    results = {{"monel-plate", 1}},
    energy_required = 7.5,
    enabled = true
  },
  {
    type = "recipe",
    name = "kovar-plate",
    category = "alloy-smelting",
    ingredients = {{ "iron-plate", 5},{"nickel-plate", 3},{ "cobalt-plate", 2}},
    results = {{"kovar-plate", 5}},
    energy_required = 8,
    enabled = true
  },
  {
    type = "recipe",
    name = "duralumin-plate",
    category = "alloy-smelting",
    ingredients = {{ "aluminum-plate", 3},{"copper-plate", 1}},
    results = {{"duralumin-plate", 1}},
    energy_required = 5,
    enabled = true
  },
  {
    type = "recipe",
    name = "bronze-plate",
    category = "alloy-smelting",
    ingredients = {{ "copper-plate", 16},{"aluminum-plate", 2},{"iron-plate", 1},{"nickel-plate", 1}},
    results = {{"bronze-plate", 10}},
    energy_required = 10,
    enabled = true
  },
  {
    type = "recipe",
    name = "havar-plate",
    category = "alloy-smelting",
    ingredients = {{ "cobalt-plate", 5},{"chromium-plate", 3},{"nickel-plate", 2}},
    results = {{"havar-plate", 2}},
    energy_required = 5,
    enabled = true
  },
  --bulletproof Titanium
  {
    type = "recipe",
    name = "titanium5-plate",
    category = "alloy-smelting",
    ingredients = {{ "titanium-plate", 4},{"aluminum-plate", 1},{"cobalt-plate", 2}},
    results = {{"titanium5-plate", 2}},
    energy_required = 5,
    enabled = true
  },
    --Magnet Age
  {
    type = "recipe",
    name = "neodymium-magnet",
    category = "alloy-smelting",
    ingredients = {{ "neodymium-ore", 6},{"iron-plate", 3}},
    results = {{"neodymium-magnet", 1}},
    energy_required = 8,
    enabled = true
  },
  {
    type = "recipe",
    name = "permalloy-magnet",
    category = "alloy-smelting",
    ingredients = {{ "nickel-plate", 2},{"iron-plate", 2}},
    results = {{"permalloy-magnet", 1}},
    energy_required = 3,
    enabled = true
  },
  {
    type = "recipe",
    name = "smco-magnet",
    category = "alloy-smelting",
    ingredients = {{ "samarium-ore", 3},{"cobalt-plate", 3}},
    results = {{"smco-magnet", 2}},
    energy_required = 2,
    enabled = true
  }
})