json.array! @pets do |pet|
  json.(pet, :breed, :name, :apartment_id)
end