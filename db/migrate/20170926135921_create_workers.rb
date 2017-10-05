class CreateWorkers < ActiveRecord::Migration[5.1]
  def change
    create_table :workers do |t|
      t.string :name
      t.string :last_name
      t.string :ARL
      t.string :role
      t.text :memo

      t.timestamps
    end
  end
end
