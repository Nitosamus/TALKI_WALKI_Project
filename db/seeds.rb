# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

system("clear")
Place.destroy_all
Professional_formation.destroy_all
Domaine.destroy_all
User.destroy_all

Place.create!([
{ "name": "Buckingham Palace", "latitude": "51.501564","longitude": "-0.141944"},
{ "name": "Westminster Abbey", "latitude": "51.499581", "longitude": "-0.127309"},
{ "name": "Big Ben", "latitude": "51.500792", "longitude": "-0.124613"}
])

10.times do
	User.create!(
		email:Faker::Internet.email, encrypted_password:Faker::Internet.password(min_length: 8)
		)
end
10.times do
Domaine.create!([
{"titre":Faker::ProgrammingLanguage.name}
])
end

10.times do
	Professional_formation.create(
		objet:Faker::job.object,titre:Faker::job.title,lieu:Faker::city.name,contacte:Faker::PhoneNumber.phone_number,mail:Faker::Internet.email,description:Faker::job.description
		)
end
tp Professional_formation.all
tp Domaine.all
tp User.all