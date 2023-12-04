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
removeResource("stone")
removeResource("copper-ore")
removeResource("uranium-ore")
addResource("magnetite-ore")
addResource("malachite-ore")
addResource("laterite-ore")
addResource("monazite-ore")
addResource("oil-shale")
addResource("iron-deposit")

data.raw["furnace"]["alloy-furnace"]["type"] = "assembling-machine"
data.raw["assembling-machine"]["alloy-furnace"] = data.raw["furnace"]["alloy-furnace"]
data.raw["furnace"]["alloy-furnace"] = nil

data.raw["furnace"]["advanced-alloy-furnace"]["type"] = "assembling-machine"
data.raw["assembling-machine"]["advanced-alloy-furnace"] = data.raw["furnace"]["advanced-alloy-furnace"]
data.raw["furnace"]["advanced-alloy-furnace"] = nil

local boiler = data.raw["boiler"]["boiler"]
boiler.energy_source.fuel_category = nil
boiler.energy_source.fuel_categories = { "chemical", "magnetic" }

data.raw["recipe"]["automation-science-pack"].ingredients = {
	{ "invar-plate", 1 },
	{ "monel-plate", 1 },
}
data.raw["recipe"]["logistic-science-pack"].ingredients = {
	{ "kovar-plate", 1 },
	{ "titanium-plate", 2 },
}
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
	{ "nitinol-plate", 4 },
	{ "soldering-plate", 8 },
}
data.raw["recipe"]["production-science-pack"].ingredients = {
	{ "incoloy-plate", 5 },
	{ "chromium-plate", 5 },
	{ "smco-magnet", 5 },
}
data.raw["recipe"]["utility-science-pack"].ingredients = {
	{ "magnox-plate", 8 },
	{ "thoralite-plate", 4 },
	{ "alnico-magnet", 5 },
}

--@generic V
--@param t V[]
--@return V[]
local my_productivity_list = {
		"iron-plate-raw",
		"iron-plate-1",
		"iron-plate-2",
		"iron-plate-3",
		"copper-plate-raw",
		"copper-plate-1",
		"copper-plate-2",
		"copper-plate-3",
 		"cobalt-plate-raw",
		"cobalt-plate-raw1",
		"cobalt-plate-1",
 		"cobalt-plate-2",
  		"cobalt-plate-3",
		"chromium-plate-raw",
		"chromium-plate-1",
		"chromium-plate-2",
		"chromium-plate-3",
		"aluminum-plate-raw",
		"aluminum-plate-1",
		"aluminum-plate-2",
		"aluminum-plate-3",
		"titanium-plate-raw",
		"titanium-plate-1",
		"titanium-plate-2",
		"titanium-plate-3",
		"lead-plate-raw",
		"lead-plate-1",
		"lead-plate-2",
		"lead-plate-3",
		"tin-plate-raw",
		"tin-plate-1",
		"tin-plate-2",
		"tin-plate-3",
		"nickel-plate-raw",
		"nickel-plate-1",
		"nickel-plate-2",
		"nickel-plate-3",
		"samarium-transmutation",
		"aluminum-transmutation",
		"cobalt-transmutation",
		"neodymium-transmutation",
		"thorium-fuel-reprocessing",
		"monazite-refining",
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
local rodparts = {}
local craftrods = {}
local pipeparts = {}
local craftpipes = {}
local metals = 
  {
    "cobalt",
    "iron",
    "copper",
    "aluminum",
    "nickel",
    "titanium",
    "chromium",
    "lead",
    "tin",
    "bronze",
    "duralumin",
    "havar",
    "incoloy",
    "monel",
    "titanium5",
    "kovar",
    "nitinol",
    "magnox",
    "thoralite",
    "light-bronze",
  }
local function create_component(metal_part)
    return
    {
        {
            type = "item",
            name = metal_part .. "-rod",
            icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/"..metal_part.."-rod.png",
            icon_size = 128,
            stack_size = 50,
        },
        {
          	type = "recipe",
          	category = "crafting",
          	name = metal_part.."-rod",
          	icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/"..metal_part.."-rod.png",
          	energy_required = 2,
          	icon_size = 128,
          	ingredients = { { metal_part.."-plate", 1 } },
        	result = metal_part.."-rod",
         	result_count = 2,
        },
		{
			type = "item",
			name = metal_part .. "-pipe",
			icon = "__base__/graphics/icons/pipe.png",
			icon_size = 64,
			stack_size = 50,
		},
        {
			type = "recipe",
			category = "crafting",
			name = metal_part.."-pipe",
			icon = "__base__/graphics/icons/pipe.png",
			energy_required = 1,
			icon_size = 64,
			ingredients = { { metal_part.."-plate", 2 } },
			result = metal_part.."-pipe",
			result_count = 1,
		},
    }
end
for _, metal_part in pairs(metals) do
    local pair = create_component(metal_part)
    table.insert(rodparts, pair[1])
    table.insert(craftrods, pair[2])
	table.insert(pipeparts, pair[3])
	table.insert(craftpipes, pair[4])
end
data:extend(rodparts)
data:extend(craftrods)
data:extend(pipeparts)
data:extend(craftpipes)