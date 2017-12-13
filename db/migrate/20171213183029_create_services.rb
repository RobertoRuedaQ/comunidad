class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :address
      t.bigint :phone
      t.string :name
      t.string :photo
      t.text :tags, array: true, using: "(string_to_array(tags, ','))"
      t.string :schedule
      t.string :category
      t.timestamps
    end
  end
end
