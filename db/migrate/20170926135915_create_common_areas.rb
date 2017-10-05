class CreateCommonAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :common_areas do |t|
      t.string :place
      t.date :date
      t.time :start_hour
      t.time :end_hour
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
