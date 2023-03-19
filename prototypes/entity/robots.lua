local bulkdrone = table.deepcopy(data.raw["logistic-robot"]["logistic-robot"])
bulkdrone.name = "bulk-drone"
bulkdrone.icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/icons/construction-robo-ico.png"
bulkdrone.icon_size = 32
bulkdrone.icon_mipmaps = 4
bulkdrone.flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map" }
bulkdrone.minable.result = "bulk-drone"
bulkdrone.max_health = 250
bulkdrone.speed = 0.10
bulkdrone.max_energy = "50MJ"
bulkdrone.energy_per_tick = "0.05kJ"
bulkdrone.speed_multiplier_when_out_of_energy = 0.5
bulkdrone.energy_per_move = "10kJ"
bulkdrone.max_payload_size = 50

data:extend({
	bulkdrone,
})
