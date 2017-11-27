class AddColumnBussinessToOrder < ActiveRecord::Migration[5.1]
  def change
  	add_reference :orders, :bussiness, index: true
  end
end
