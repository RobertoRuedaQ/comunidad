json.extract! service, :id, :address, :phone, :name, :photo, :tags, :schedule, :category, :created_at, :updated_at
json.url service_url(service, format: :json)
