class CreateAdvertisements < ActiveRecord::Migration[5.1]
  def change
    create_table :advertisements do |t|
      t.string :tittle
      t.text :description
      t.integer :amount
      t.string :imagen
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
