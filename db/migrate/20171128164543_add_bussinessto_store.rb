class AddBussinesstoStore < ActiveRecord::Migration[5.1]
  def change
  	add_reference(:stores, :bussiness)
  end
end
