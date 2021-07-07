require 'util'
local alloyFurnace = table.deepcopy(data.raw.furnace["stone-furnace"])
alloyFurnace.name = "alloy-furnace"
alloyFurnace.icon = "__base__/graphics/icons/stone-furnace.png"
alloyFurnace.animation = table.deepcopy(data.raw["furnace"]["stone-furnace"].animation)
alloyFurnace.working_visualizations = table.deepcopy(data.raw["furnace"]["stone-furnace"].working_visualizations)
alloyFurnace.picture = 
{
  filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/machines/furnace_brick.png",
  priority = "extra-high",
  selection_box = {{-1, -1}, {1, 1}},
  width = 200,
  height = 200,
}
alloyFurnace.max_health = 750
alloyFurnace.crafting_speed = 2
alloyFurnace.energy_usage = "250kW"
alloyFurnace.crafting_categories = {"alloy-smelting"}
alloyFurnace.minable.result = "alloy-furnace"
alloyFurnace.icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/machines/furnace_brick.png"


data:extend(
{
  alloyFurnace
})