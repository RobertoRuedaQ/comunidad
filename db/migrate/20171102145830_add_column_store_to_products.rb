class AddColumnStoreToProducts < ActiveRecord::Migration[5.1]
  def change
  	add_reference :products, :store, index: true
  	add_column :products, :recommended, :boolean, default: false
  end
end
