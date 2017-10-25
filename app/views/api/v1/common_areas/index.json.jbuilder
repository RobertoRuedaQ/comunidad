json.array! @common_areas do |common_area|
  json.(common_area, :title, :date, :start_hour, :end_hour, :user_id)
end