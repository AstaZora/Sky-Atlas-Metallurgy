require 'util'
local alloyFurnace = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-1"])
alloyFurnace.name = "alloy-furnace"
alloyFurnace.crafting_categories = {"alloy-smelting"}
alloyFurnace.source_inventory_size = 4
alloyFurnace.minable.result = "alloy-furnace"

data:extend(
{
  alloyFurnace
})