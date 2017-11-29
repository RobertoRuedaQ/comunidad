require 'csv'

Hobby.create(name: "Deporte")
Hobby.create(name: "Gastronomía")
Hobby.create(name: "Belleza y salud")
Hobby.create(name: "Tecnología")
Hobby.create(name: "Moda")
Hobby.create(name: "Entretenimiento")
Hobby.create(name: "Cultura y literatura")



csv_text = File.read(Rails.root.join('lib', 'seeds', 'apartments.csv'))
csv = CSV.parse(csv_text.scrub, headers: true, col_sep: ';')

csv.each do |row|
 t = Apartment.new( number: row[0],block: row[1],parking_lots: row[2],bikes_parking: row[3],storage: row[4], coefficient: row[5])
  t.save
  puts "Apartamento #{t.number} - #{t.block} guardado"
end


OrderStatus.create! id: 1, name: "En progreso"
OrderStatus.create! id: 2, name: "Confirmado"
OrderStatus.create! id: 3, name: "Entregado"
OrderStatus.create! id: 4, name: "Cancelado"


User.create(email: "admin@correo.co", password: "123456", name:"admin",cellphone: 1234567890 ,active: true ,admin:true , apartment_id: 1)