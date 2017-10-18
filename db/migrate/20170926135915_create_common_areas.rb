class CreateCommonAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :common_areas do |t|
      t.string :title
      t.date :date
      t.time :start_hour
      t.time :end_hour
      t.boolean :aproved, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
