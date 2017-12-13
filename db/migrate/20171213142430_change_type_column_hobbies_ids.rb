class ChangeTypeColumnHobbiesIds < ActiveRecord::Migration[5.1]
  def change
  	change_column :users, :hobbies_ids, :text, array: true, default: [], using: "(string_to_array(hobbies_ids, ','))"
  end
end
