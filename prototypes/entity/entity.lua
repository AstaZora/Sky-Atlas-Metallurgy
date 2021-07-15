require 'util'
local alloyFurnace = table.deepcopy(data.raw.furnace["stone-furnace"])
alloyFurnace.name = "alloy-furnace"
alloyFurnace.max_health = 750
alloyFurnace.crafting_speed = 2
alloyFurnace.energy_usage = "250kW"
alloyFurnace.crafting_categories = {"alloy-smelting"}
alloyFurnace.minable.result = "alloy-furnace"
alloyFurnace.next_upgrade = nil
alloyFurnace.animation =
    {
      layers =
      {
        {
          filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/machines/clay_furnace.png",
          priority = "extra-high",
          width = 81,
          height = 64,
          frame_count = 1,
          shift = util.by_pixel(22, 0),
          scale = 1.2,
        },
        {
          filename = "__base__/graphics/entity/stone-furnace/stone-furnace-shadow.png",
          priority = "extra-high",
          width = 81,
          height = 64,
          frame_count = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(14.5, 2),
        }
      }
    }


data:extend(
{
  alloyFurnace
})