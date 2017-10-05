json.extract! pet, :id, :breed, :name, :apartment_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
