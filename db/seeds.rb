# Emptying database

PlanetarySystem.destroy_all
Star.destroy_all

# Planetary systems

solar_system = PlanetarySystem.create(name: 'Solar System')

# Stars

Star.create([
  { name: 'Sun', mass: 1.989 * 10**30, planetary_system: solar_system },
  { name: 'Sirius A', mass: 4.018 * 10**30 },
  { name: 'Canopus', mass: 1.949 * 10**31 },
  { name: 'Rigil Kentaurus', mass: 2.188 * 10**30 },
  { name: 'Arcturus', mass: 2.188 * 10**30 },
  { name: 'Vega', mass: 4.246 * 10**30 },
  { name: 'Capella Aa', mass: 5.109 * 10**30 },
  { name: 'Capella Ab', mass: 4.938 * 10**30 },
  { name: 'Rigel', mass: 4.569 * 10**30 },
  { name: 'Procyon A', mass: 2.981 * 10**30 },
  { name: 'Achernar', mass: 1.333 * 10**31 },
  { name: 'Betelgeuse', mass: 1.531 * 10**31 },
  { name: 'Hadar Aa', mass: 2.391 * 10**31 },
  { name: 'Altair', mass: 3.56 * 10**30 }
])

# Planets

Planet.create[
  {
    name: "Mars",
    radius: 3389.92,
    mass: 6.4171 * 10**23,
    volume: 16.318 * 10**10,
    sideral_rotation_period: 24.622962,
    mean_solar_day: 88775.24415,
    core_radius: 1700,
    geometric_albedo: 0.150,
    mean_temperature: 210,
    obliquity_to_orbit: 25.19,
    planetary_system: solar_system
  }
]
