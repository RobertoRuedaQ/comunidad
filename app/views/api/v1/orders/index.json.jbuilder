json.array! @orders do |order|
  json.(order, :id, :total, :order_status_id, :user_id, :created_at, :updated_at)
end