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

Place.create!([
{ "name": "Buckingham Palace", "latitude": "51.501564","longitude": "-0.141944"},
{ "name": "Westminster Abbey", "latitude": "51.499581", "longitude": "-0.127309"},
{ "name": "Big Ben", "latitude": "51.500792", "longitude": "-0.124613"}

])

10.times do
	User.create!(
		email:Faker::Internet.email, password:Faker::Internet.password(min_length: 8)
		)
end
tp User.all

10.times do
	ProfessionalFormation.create(
		objet:Faker::Commerce.department,titre:Faker::Commerce.product_name,lieu:Faker::Address.street_address,
		contacte:Faker::PhoneNumber.phone_number,
		mail:Faker::Internet.email,
		description:Faker::Job.name, 
		user:User.find(1),
		)
end
tp ProfessionalFormation.all

10.times do
	OffreEmploi.create(
		salaire:Faker::Commerce.department,
		lieu:Faker::Address.street_address,
		mail:Faker::Internet.email,
		description:Faker::Job.name, 
		user:User.find(5),
		)
end
tp OffreEmploi.all


