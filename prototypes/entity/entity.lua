require 'util'
local alloyFurnace = table.deepcopy(data.raw.furnace["electric-furnace"])
alloyFurnace.name = "alloy-furnace"
alloyFurnace.animation = table.deepcopy(data.raw["furnace"]["electric-furnace"].animation)
alloyFurnace.max_health = 750
alloyFurnace.crafting_speed = 0.75
alloyFurnace.energy_usage = "1.5MW"
alloyFurnace.crafting_categories = {"alloy-smelting"}
alloyFurnace.minable.result = "alloy-furnace"

data:extend(
{
  alloyFurnace
})