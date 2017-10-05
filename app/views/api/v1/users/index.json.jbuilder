json.array! @users do |user|
  json.(user, :id, :email, :name, :last_name, :gender, :cellphone, :day_of_birth, :apartment_id, :owner, :hobbies, :active, :admin)
end