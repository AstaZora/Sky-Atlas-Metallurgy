require("prototypes.categories.fuel-category")
require("prototypes.categories.recipe-category")
require("prototypes.entity.autoplace-controls")
require("prototypes.entity.entity")
require("prototypes.entity.resources")
require("prototypes.entity.robots")
require("prototypes.item.item")
require("prototypes.item-groups")
require("prototypes.recipe.furnace-recipe")
require("prototypes.particle.particles")
require("prototypes.particle.particle-animations")
require("prototypes.recipe.recipe")
require("prototypes.recipe.fluid-recipe")

local presets = {
	["rich-resources"] = { richness = "very-good" },
	["rail-world"] = {
		frequency = 0.33333333333,
		size = 3,
	},
	["ribbon-world"] = {
		frequency = 3,
		size = 0.5,
		richness = 2,
	},
}

local function addResource(resource)
	for preset, conf in pairs(presets) do
		local set = data.raw["map-gen-presets"]["default"][preset]
		if
			set
			and set.basic_settings
			and set.basic_settings.autoplace_controls
			and not set.basic_settings.autoplace_controls[resource]
		then
			set.basic_settings.autoplace_controls[resource] = conf
		end
	end
end

local function removeResource(resource)
	for _, preset in pairs(data.raw["map-gen-presets"]["default"]) do
		if
			preset
			and preset.basic_settings
			and preset.basic_settings.autoplace_controls
			and preset.basic_settings.autoplace_controls[resource]
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
addResource("oil-shale")

data.raw["furnace"]["alloy-furnace"]["type"] = "assembling-machine"
data.raw["assembling-machine"]["alloy-furnace"] = data.raw["furnace"]["alloy-furnace"]
data.raw["furnace"]["alloy-furnace"] = nil

data.raw["furnace"]["advanced-alloy-furnace"]["type"] = "assembling-machine"
data.raw["assembling-machine"]["advanced-alloy-furnace"] = data.raw["furnace"]["advanced-alloy-furnace"]
data.raw["furnace"]["advanced-alloy-furnace"] = nil

local boiler = data.raw["boiler"]["boiler"]
boiler.energy_source.fuel_category = nil
boiler.energy_source.fuel_categories = { "chemical", "magnetic" }

data.raw["recipe"]["automation-science-pack"].ingredients = { { "invar-plate", 1 }, { "monel-plate", 1 } }
data.raw["recipe"]["logistic-science-pack"].ingredients = { { "kovar-plate", 5 }, { "titanium-plate", 1 } }
data.raw["recipe"]["concrete"].ingredients = {
	{ "magnetite-ore", 1 },
	{ "stone-brick", 5 },
	{ type = "fluid", name = "water", amount = 100 },
}
data.raw["recipe"]["chemical-science-pack"].ingredients = {
	{ "bronze-plate", 8 },
	{ "titanium5-plate", 2 },
	{ "duralumin-plate", 2 },
	{ "permalloy-magnet", 4 },
}
data.raw["recipe"]["military-science-pack"].ingredients = {
	{ "aluminum-plate", 4 },
	{ "cobalt-plate", 4 },
	{ "copper-plate", 8 },
}
data.raw["recipe"]["production-science-pack"].ingredients = {
	{ "incoloy-plate", 5 },
	{ "chromium-plate", 5 },
	{ "smco-magnet", 5 },
}
data.raw["recipe"]["utility-science-pack"].ingredients = {
	{ "havar-plate", 8 },
	{ "chromium-steel", 4 },
	{ "neodymium-magnet", 5 },
}
  
local my_productivity_list = {
		"iron-plate-raw",
		"iron-plate-1",
		"iron-plate-2",
		"iron-plate-3",
  		"iron-plate-4",
  		"iron-plate-5",
  		"iron-plate-6",
  		"iron-plate-7",
  		"iron-plate-8",
  		"iron-plate-9",
 		 "cobalt-plate-raw",
  		"cobalt-plate-1",
 		 "cobalt-plate-2",
  		"cobalt-plate-3",
  		"cobalt-plate-4",
  		"cobalt-plate-5",
  		"cobalt-plate-6",
 		 "cobalt-plate-7",
  		"cobalt-plate-8",
  		"cobalt-plate-9",
  		"cobalt-plate-10",
}

for _, module in pairs(data.raw.module) do
    local limitations = module.limitation
    if limitations then
        --assumes only productivity has limitations
        for _, recipe_name in pairs(my_productivity_list) do
            table.insert(limitations, recipe_name)
        end
    end
end
