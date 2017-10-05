class CreateWerehouses < ActiveRecord::Migration[5.1]
  def change
    create_table :werehouses do |t|
      t.string :name
      t.string :last_name
      t.string :shift
      t.integer :document_id
      t.string :ARL
      t.timestamps
    end
  end
end
