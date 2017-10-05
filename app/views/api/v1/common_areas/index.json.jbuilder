json.array! @common_areas do |common_area|
  json.(common_area, :place, :date, :start_hour, :end_hour, :user_id)
end