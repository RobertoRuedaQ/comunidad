class AddColumnRecommend < ActiveRecord::Migration[5.1]
  def change
  	add_column :products, :recommended, :boolean, default: false
  end
end
