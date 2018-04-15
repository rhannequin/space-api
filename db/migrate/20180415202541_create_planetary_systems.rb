class CreatePlanetarySystems < ActiveRecord::Migration[5.1]
  def change
    create_table :planetary_systems do |t|
      t.string :name

      t.timestamps
    end
  end
end
