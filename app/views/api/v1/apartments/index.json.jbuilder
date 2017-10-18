json.array! @apartments do |apartment|
  json.(apartment, :number, :block, :parking_lots, :bikes_parking, :storage, :coefficient)
  json.users apartment.users.each
  json.children apartment.children.each
  json.vehicles apartment.vehicles.each
  json.pets apartment.pets.each
  json.werehouses apartment.werehouses.each
end