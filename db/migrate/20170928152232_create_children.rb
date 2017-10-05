class CreateChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :children do |t|
      t.string :name
      t.string :last_name
      t.date :day_of_birth
      t.string :gender
      t.references :apartment, foreign_key: true

      t.timestamps
    end
  end
end
