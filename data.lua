require("prototypes.item.item")

local function removeResource(resource)
  -- Remove from presets
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