class CreateNewsletters < ActiveRecord::Migration[5.1]
  def change
    create_table :newsletters do |t|
      t.string :tittle
      t.string :file

      t.timestamps
    end
  end
end
