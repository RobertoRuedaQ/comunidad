json.extract! complaint, :id, :type, :description, :answer, :solved, :apartment_id, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)
