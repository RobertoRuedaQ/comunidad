json.array!(@common_areas) do |common_area|
  json.extract! common_area, :id, :title
  json.start common_area.date
  json.end common_area.date
  json.url common_area_url(common_area, format: :html)
end
