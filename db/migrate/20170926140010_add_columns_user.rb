class AddColumnsUser < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :gender, :string
    add_column :users, :document_type, :string
    add_column :users, :document_id, :integer
  	add_column :users, :cellphone, :string
    add_column :users, :day_of_birth, :date
    add_column :users, :profession, :string
    add_column :users, :offer_services, :boolean, default: false
    add_column :users, :hobbies_id, :string
    add_column :users, :owner, :boolean, default: false
    add_column :users, :active, :boolean, default: false
    add_column :users, :admin, :boolean, default: false
    add_column :users, :apartment_id, :integer
  end
end
