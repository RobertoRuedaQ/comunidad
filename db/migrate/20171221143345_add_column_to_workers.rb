class AddColumnToWorkers < ActiveRecord::Migration[5.1]
  def change
  	add_column :workers, :imagen, :string
  end
end
