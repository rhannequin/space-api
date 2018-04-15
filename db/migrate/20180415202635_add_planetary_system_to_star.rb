class AddPlanetarySystemToStar < ActiveRecord::Migration[5.1]
  def change
    add_reference :stars, :planetary_system, foreign_key: true
  end
end
