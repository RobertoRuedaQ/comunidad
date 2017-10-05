json.array! @advertisements do |advertisement|
  json.(advertisement, :tittle, :description, :amount, :imagen, :user_id)
end