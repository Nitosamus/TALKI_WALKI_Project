# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Place.destroy_all
ProfessionalFormation.destroy_all
User.destroy_all
OffreEmploi.destroy_all
FormationAcademique.destroy_all

Place.create!([
{ "name": "Toliara", "latitude": "-23.35", "longitude": "43.666667"},
{ "name": "Diego Suarez", "latitude": "-13,7715","longitude": "49,5279"},
{ "name": "Majunga", "latitude": "-15.7166","longitude": "46.3166"},
{ "name": "Tamatave", "latitude": "-18.1492","longitude": "49.4023"},
{ "name": "Fianarantsoa", "latitude": "-21.4536","longitude": "47.0858"},
{ "name": "Tananarive", "latitude": "-18.91368","longitude": "47.53613"},
])

User.destroy_all
10.times do
u= User.create(email: Faker::Internet.free_email, password: "123456", password_confirmation: "123456")
end

u=User.all


10.times do
FormationAcademique.create!(description: Faker::Lorem.paragraphs, contact: Faker::IDNumber.unique.valid, mail: Faker::Internet.free_email, titre: 
Faker::University.name,lieu: Faker::WorldCup.team, user:u[rand(10)] )
end



10.times do
	ProfessionalFormation.create(
		objet:Faker::Commerce.department,titre:Faker::Commerce.product_name,lieu:Faker::Address.street_address,
		contacte:Faker::PhoneNumber.phone_number,
		mail:Faker::Internet.email,
		description:Faker::Job.name, 
		user:u[rand(10)])

end
tp ProfessionalFormation.all

10.times do
	OffreEmploi.create(
		salaire:Faker::Commerce.department,
		lieu:Faker::Address.street_address,
		mail:Faker::Internet.email,
		description:Faker::Job.title, 
		user:u[rand(10)]
		)
end
tp User.all
tp OffreEmploi.all