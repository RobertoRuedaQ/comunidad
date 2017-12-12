class CreatePromos < ActiveRecord::Migration[5.1]
  def change
    create_table :promos do |t|
      t.string :url
      t.string :image
      t.references :hobby, foreign_key: true

      t.timestamps
    end
  end
end
