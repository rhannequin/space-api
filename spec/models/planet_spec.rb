require "rails_helper"

ATTS = {
  name: "Mars",
  radius: 1,
  mass: 2.2,
  volume: 3.3,
  sideral_rotation_period: 4.4,
  mean_solar_day: 5.5,
  core_radius: 6,
  geometric_albedo: 7.7,
  mean_temperature: 8,
  obliquity_to_orbit: 9.9,
  mean_sideral_orbit: 10.10,
  flattening: 11.11,
  semi_major_axis: 12.12,
  sideral_rotation_rate: 13.13,
  polar_gravity: 14.14,
  equatorial_gravity: 15.15,
  mass_ration: 16.16,
  mass_of_atmosphere: 17,
  atmosphere_pressure: 18.18,
  maximal_angular_diameter: 19.19,
  visual_magnitude: -20.20,
  orbital_speed: 21.21,
  escape_speed: 22.22,
  mean_solar_constant: 23,
  solar_constant_at_perihelion: 24,
  solar_constant_at_aphelion: 25
}

RSpec.describe Planet, type: :model do
  describe "Attributes" do
    before do
      Planet.create(ATTS)
    end

    ATTS.each do |k, v|
      it "has a #{v.class} attribute ##{k.to_s}" do
        expect(Planet.last.send(k)).to eq(v)
      end
    end
  end
end
