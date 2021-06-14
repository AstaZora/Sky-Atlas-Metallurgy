require("prototypes.item.item")
require("prototypes.entity.resources")
require("prototypes.entity.autoplace-controls")
require("prototypes.particle.particles")
require("prototypes.particle.particle-animations")
require("prototypes.recipe.furnace-recipe")
require("prototypes.recipe.recipe")
require("prototypes.entity.entity")
require("prototypes.sound.sound")

local presets = {
  ["rich-resources"] = {richness = "very-good"},
  ["rail-world"] = {
    frequency = 0.33333333333,
    size = 3
  },
  ["ribbon-world"] = {
    frequency = 3,
    size = 0.5,
    richness = 2
  }
}

local function addResource(resource)
  for preset, conf in pairs(presets) do
    local set = data.raw["map-gen-presets"]["default"][preset]
    if
      set and set.basic_settings and set.basic_settings.autoplace_controls and
        not set.basic_settings.autoplace_controls[resource]
     then
      set.basic_settings.autoplace_controls[resource] = conf
    end
  end
end

local function removeResource(resource)
  for _, preset in pairs(data.raw["map-gen-presets"]["default"]) do
    if
    preset and preset.basic_settings and preset.basic_settings.autoplace_controls and
      preset.basic_settings.autoplace_controls[resource]
    then
      data.raw["resource"][resource] = nil
      data.raw["autoplace-control"][resource] = nil
      preset.basic_settings.autoplace_controls[resource] = nil
    end
  end
end

removeResource("iron-ore")
removeResource("copper-ore")
removeResource("uranium-ore")
addResource("magnetite-ore")
addResource("malachite-ore")
addResource("laterite-ore")
addResource("monazite-ore")