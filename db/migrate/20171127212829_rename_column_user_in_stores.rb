class RenameColumnUserInStores < ActiveRecord::Migration[5.1]
  def change
  	rename_column :stores, :user_id, :bussiness_id
  end
end
