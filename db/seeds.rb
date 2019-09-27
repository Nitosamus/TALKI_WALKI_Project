# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

system("clear")
Place.destroy_all
User.destroy_all
City.destroy_all
Pf.destroy_all
Job.destroy_all
Af.destroy_all
Mf.destroy_all
Ff.destroy_all
Field.destroy_all



Place.create!([
{ "name": "Toliara", "latitude": "-23.35", "longitude": "43.666667"},
{ "name": "Diego Suarez", "latitude": "-13,7715","longitude": "49,5279"},
{ "name": "Majunga", "latitude": "-15.7166","longitude": "46.3166"},
{ "name": "Tamatave", "latitude": "-18.1492","longitude": "49.4023"},
{ "name": "Fianarantsoa", "latitude": "-21.4536","longitude": "47.0858"},
{ "name": "Tananarive", "latitude": "-18.91368","longitude": "47.53613"},
])

10.times do 
	City.create(name: Faker::Nation.capital_city, zip_code: Faker::Address.zip_code)
end

c = City.all

10.times do 
	User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, 
	email: Faker::Internet.email, password: "dev1234", age: rand(10..90), city: c[rand(0..9)])
end

u = User.all

10.times do
Af.create(	description: Faker::Hipster.paragraph(sentence_count: 9, supplemental: true, random_sentences_to_add: 4),
object: Faker::Hipster.sentence(word_count: 3, supplemental: true, random_words_to_add:2))
end

af = Af.all

10.times do
Job.create(	description: Faker::Hipster.paragraph(sentence_count: 9, supplemental: true, random_sentences_to_add: 4),
object: Faker::Hipster.sentence(word_count: 3, supplemental: true, random_words_to_add:2))
end
job = Job.all

10.times do
Pf.create(	description: Faker::Hipster.paragraph(sentence_count: 9, supplemental: true, random_sentences_to_add: 4),
object: Faker::Hipster.sentence(word_count: 3, supplemental: true, random_words_to_add:2))
end

pf = Pf.all

10.times do
	Field.create(
		title:Faker::Hipster.sentence(word_count: 3, supplemental: true, random_words_to_add:2),
		description:Faker::Hipster.paragraph(sentence_count: 9, supplemental: true, random_sentences_to_add:5), 
		af: af[rand(10)], pf: pf[rand(10)], job: job[rand(10)])
end

f = Field.all

10.times do
	Mf.create(
		title:Faker::Hipster.sentence(word_count: 3, supplemental: true, random_words_to_add:2),
		description:Faker::Hipster.paragraph(sentence_count: 9, supplemental: true, random_sentences_to_add:5), 
		field: f[rand(10)], city: c[rand(0..9)])
end

mf = Mf.all
10.times do
	Ff.create(
		title:Faker::Hipster.sentence(word_count: 3, supplemental: true, random_words_to_add: 2),
		description:Faker::Hipster.paragraph(sentence_count: 9, supplemental: true, random_sentences_to_add: 5), 
		field: f[rand(10)], city: c[rand(0..9)])
end
ff = Ff.all


tp c
tp u
tp f
tp af
tp job
tp pf
tp mf
tp ff
