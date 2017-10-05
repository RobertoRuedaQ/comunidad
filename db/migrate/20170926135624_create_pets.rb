class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :breed
      t.string :name
      t.references :apartment, foreign_key: true

      t.timestamps
    end
  end
end
