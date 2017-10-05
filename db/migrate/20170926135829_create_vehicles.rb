class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :category
      t.string :plate
      t.string :brand
      t.references :apartment, foreign_key: true

      t.timestamps
    end
  end
end
