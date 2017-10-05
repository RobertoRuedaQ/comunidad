class CreateComplaints < ActiveRecord::Migration[5.1]
  def change
    create_table :complaints do |t|
      t.string :category
      t.text :description
      t.text :answer
      t.boolean :solved
      t.references :apartment, foreign_key: true

      t.timestamps
    end
  end
end
