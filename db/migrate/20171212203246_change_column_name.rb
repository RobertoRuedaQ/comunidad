class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :users, :hobbies_id, :hobbies_ids
  end
end
