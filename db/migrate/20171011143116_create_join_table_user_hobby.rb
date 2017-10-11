class CreateJoinTableUserHobby < ActiveRecord::Migration[5.1]
  def change
		create_join_table :users, :hobbies, table_name: :user_hobbies do |t|
		  t.index :hobby_id
		  t.index :user_id
		end
  end
end
