class AddColumnStoreToProducts < ActiveRecord::Migration[5.1]
  def change
  	add_reference :products, :store, index: true
  end
end
