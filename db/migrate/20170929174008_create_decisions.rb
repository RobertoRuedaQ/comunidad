class CreateDecisions < ActiveRecord::Migration[5.1]
  def change
    create_table :decisions do |t|
      t.string :tittle
      t.text :description
      t.float :positive_coefficient, default: 0
      t.float :negative_coefficient, default: 0
      t.timestamps
    end
  end
end
