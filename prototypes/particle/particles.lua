local particle_animations = require("prototypes.particle.particle-animations")

data:extend(
{
  {
    type = "optimized-particle",
    name = "magnetite-ore-particle",
    life_time = 180,
    pictures = particle_animations.get_magnetite_particle_pictures(),
    shadows = particle_animations.get_iron_particle_shadow_pictures()
  },
  {
    type = "optimized-particle",
    name = "malachite-ore-particle",
    life_time = 180,
    pictures = particle_animations.get_malachite_particle_pictures(),
    shadows = particle_animations.get_copper_particle_shadow_pictures()
  },
  {
    type = "optimized-particle",
    name = "laterite-ore-particle",
    life_time = 180,
    pictures = particle_animations.get_laterite_particle_pictures(),
    shadows = particle_animations.get_copper_particle_shadow_pictures()
  },
  {
    type = "optimized-particle",
    name = "monazite-ore-particle",
    life_time = 180,
    pictures = particle_animations.get_monazite_particle_pictures(),
    shadows = particle_animations.get_monazite_particle_shadow_pictures()
  }
})