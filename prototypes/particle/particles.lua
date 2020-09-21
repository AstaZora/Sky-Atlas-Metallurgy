local particle_animations = require("prototypes.particle.particle-animations")

data:extend(
{
  {
    type = "optimized-particle",
    name = "laterite-ore-particle",
    life_time = 180,
    pictures = particle_animations.get_laterite_particle_pictures(),
    shadows = particle_animations.get_copper_particle_shadow_pictures()
  }
})