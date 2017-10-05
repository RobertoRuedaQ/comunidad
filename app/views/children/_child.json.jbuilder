json.extract! child, :id, :name, :last_name, :day_of_birth, :gender, :apartment_id, :created_at, :updated_at
json.url child_url(child, format: :json)
