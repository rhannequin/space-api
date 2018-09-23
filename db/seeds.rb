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
    mean_sideral_orbit: 686.98,
    flattening: 0.00589001,
    semi_major_axis: 3396.2,
    sideral_rotation_rate: 0.0000708822,
    polar_gravity: 3.758,
    equatorial_gravity: 3.71,
    mass_ration: 3098703.59,
    mass_of_atmosphere: 2.5 * 10**16,
    atmosphere_pressure: 0.0056,
    maximal_angular_diameter: 17.9,
    visual_magnitude: -1.52,
    orbital_speed: 24.13,
    escape_speed: 5.027,
    mean_solar_constant: 589,
    solar_constant_at_perihelion: 717,
    solar_constant_at_aphelion: 493,
    planetary_system: solar_system
  }
]
