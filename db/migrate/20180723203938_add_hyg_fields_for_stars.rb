class AddHygFieldsForStars < ActiveRecord::Migration[5.2]
  def change
    # Star's apparent visual magnitude
    add_column :stars, :apparent_magnitude, :decimal, precision: 4, scale: 2

    # Star's absolute visual magnitude
    add_column :stars, :absolute_magnitude, :decimal, precision: 6, scale: 3

    # Stars's right ascension
    add_column :stars, :right_ascension, :decimal, precision: 9, scale: 6

    # Star's declination
    add_column :stars, :declination, :decimal, precision: 10, scale: 6
  end
end
