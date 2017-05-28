class AddMassToStars < ActiveRecord::Migration[5.1]
  def change
    add_column :stars, :mass, :decimal
  end
end
