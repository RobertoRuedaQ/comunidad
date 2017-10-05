class AddColumnToWerehouse < ActiveRecord::Migration[5.1]
  def change
  	add_column :werehouses, :apartment_id, :integer
  end
end
