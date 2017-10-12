json.array! @users do |user|
  json.(user, :id, :email,:name,:last_name,:gender,:document_type,:document_id,:cellphone,:day_of_birth,:profession,:offer_services,:hobbies_id,:owner,:active,:admin,:apartment_id)
end