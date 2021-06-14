require 'util'
local alloyFurnace = table.deepcopy(data.raw["furnace"]["electric-furnace"])
alloyFurnace.name = "alloy-furnace"
alloyFurnace.category = "alloy-smelting"

data:extend(
{
  alloyFurnace
})