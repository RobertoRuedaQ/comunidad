class CreateApartments < ActiveRecord::Migration[5.1]
  def change
    create_table :apartments do |t|
      t.string :number
      t.string :block
      t.string :parking_lots
      t.string :bikes_parking
      t.string :storage
      t.float :coefficient
      t.references :werehouse, foreign_key: true

      t.timestamps
    end
  end
end
