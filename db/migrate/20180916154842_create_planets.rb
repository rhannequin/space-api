class CreatePlanets < ActiveRecord::Migration[5.2]
  def change
    create_table :planets do |t|
      t.string :name
      t.decimal :radius
      t.decimal :mass
      t.decimal :volume
      t.decimal :sideral_rotation_period
      t.decimal :mean_solar_day
      t.integer :core_radius
      t.decimal :geometric_albedo
      t.integer :mean_temperature
      t.decimal :obliquity_to_orbit
      t.decimal :mean_sideral_orbit
      t.decimal :flattening
      t.decimal :semi_major_axis
      t.decimal :sideral_rotation_rate
      t.decimal :polar_gravity
      t.decimal :equatorial_gravity
      t.decimal :mass_ration
      t.integer :mass_of_atmosphere
      t.decimal :atmosphere_pressure
      t.decimal :maximal_angular_diameter
      t.decimal :visual_magnitude
      t.decimal :orbital_speed
      t.decimal :escape_speed
      t.integer :mean_solar_constant
      t.integer :solar_constant_at_perihelion
      t.integer :solar_constant_at_aphelion
      t.references :planetary_system, foreign_key: true
    end
  end
end
