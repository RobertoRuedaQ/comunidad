json.extract! chat, :id, :comment, :user_id, :created_at, :updated_at
json.url chat_url(chat, format: :json)
