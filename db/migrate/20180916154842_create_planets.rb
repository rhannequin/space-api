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
      t.references :planetary_system, foreign_key: true
    end
  end
end
