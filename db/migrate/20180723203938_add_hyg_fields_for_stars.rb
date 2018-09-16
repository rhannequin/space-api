class AddHygFieldsForStars < ActiveRecord::Migration[5.2]
  def change
    # Star's apparent visual magnitude
    add_column :stars, :apparent_magnitude, :decimal, precision: 4, scale: 2

    # Star's absolute visual magnitude
    add_column :stars, :absolute_magnitude, :decimal, precision: 6, scale: 3

    # Star's declination, in L☉, or 3.8275 (+-0.0014) * 10^26 W
    add_column :stars, :luminosity, :decimal, precision: 30, scale: 20

    # Stars's right ascension, in decimal degrees, for epoch and equinox 2000.0
    add_column :stars, :right_ascension, :decimal, precision: 9, scale: 6

    # Star's declination, in decimal degrees, for epoch and equinox 2000.0
    add_column :stars, :declination, :decimal, precision: 10, scale: 6

    # Star's radial velocity
    add_column :stars, :radial_velocity, :decimal, precision: 26, scale: 18
  end
end
