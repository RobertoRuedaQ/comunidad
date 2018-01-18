class AddColumnToNewslatter < ActiveRecord::Migration[5.1]
  def change
  	add_column :newsletters, :date, :string
  end
end
