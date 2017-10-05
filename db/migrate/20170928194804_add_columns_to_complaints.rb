class AddColumnsToComplaints < ActiveRecord::Migration[5.1]
  def change
    add_column :complaints, :topic, :string
    add_column :complaints, :imagen, :string
  end
end
