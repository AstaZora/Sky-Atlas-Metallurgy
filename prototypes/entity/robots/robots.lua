local bulkdrone = table.deepcopy(data.raw["logistic-robot"]["logistic-robot"])
bulkdrone.name = "bulk-drone"
bulkdrone.icon = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/misc/construction-robo-ico.png"
bulkdrone.icon_size = 32
bulkdrone.icon_mipmaps = 4
bulkdrone.flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"}
bulkdrone.minable.result = "bulk-drone"
bulkdrone.max_health = 250
bulkdrone.speed = 0.01
bulkdrone.max_energy = "8MJ"
bulkdrone.energy_per_tick = "0.05kJ"
bulkdrone.speed_multiplier_when_out_of_energy = 0.5
bulkdrone.energy_per_move = "10kJ"
bulkdrone.max_payload_size = 50
bulkdrone.in_motion.filename =  "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/misc/construction-robot.png"
local shadows = {
  filename = "__Sky-Atlas-Metallurgy-Rebirth__/graphics/entity/misc/construction-robot-shadow.png",
  priority = "high",
  line_length = 16,
  width = 64,
  height = 64,
  frame_count = 1,
  shift = util.by_pixel(31.75, 19.75),
  direction_count = 16,
  y = 57,
  scale = scale,
  draw_as_shadow = true
}

data:extend(
{
  bulkdrone
})
