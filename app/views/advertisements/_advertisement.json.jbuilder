json.extract! advertisement, :id, :tittle, :description, :amount, :image, :user_id, :created_at, :updated_at
json.url advertisement_url(advertisement, format: :json)
