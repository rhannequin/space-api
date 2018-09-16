require "rails_helper"

RSpec.describe Planet, type: :model do
  before do
    Planet.create(name: "Mars", mass: 1, radius: 2.2, volume: 3.3, sideral_rotation_period: 4.4, mean_solar_day: 5.5,
      core_radius: 6, geometric_albedo: 7.7, mean_temperature: 8, obliquity_to_orbit: 9.9)
  end

  describe "Attributes" do
    it "has a string attribute #name" do
      expect(Planet.last.name).to eq("Mars")
    end

    it "has an integer attribute #mass" do
      expect(Planet.last.mass).to eq(1)
    end

    it "has an decimal attribute #radius" do
      expect(Planet.last.radius).to eq(2.2)
    end

    it "has an decimal attribute #volume" do
      expect(Planet.last.volume).to eq(3.3)
    end

    it "has an decimal attribute #sideral_rotation_period" do
      expect(Planet.last.sideral_rotation_period).to eq(4.4)
    end

    it "has an decimal attribute #mean_solar_day" do
      expect(Planet.last.mean_solar_day).to eq(5.5)
    end

    it "has an integer attribute #core_radius" do
      expect(Planet.last.core_radius).to eq(6)
    end

    it "has an decimal attribute #geometric_albedo" do
      expect(Planet.last.geometric_albedo).to eq(7.7)
    end

    it "has an integer attribute #mean_temperature" do
      expect(Planet.last.mean_temperature).to eq(8)
    end

    it "has an decimal attribute #obliquity_to_orbit" do
      expect(Planet.last.obliquity_to_orbit).to eq(9.9)
    end
  end
end
