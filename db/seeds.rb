# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
p"destroy all old data ♻️"
User.destroy_all
PhysicalTherapist.destroy_all



p "seeding Users 🌱"
 User.create!(username: "ced", email: "ced@gmail.com", insurer: "United Health", password_digest: "abc", first_name: "Christian", last_name: "Cedeno", state: "NY", city: "NY", DOB: "07/08/1352 B.C")
 User.create!(username: "Ana", email: "ana@gmail.com", insurer: "Blue Cross Blue Shield", password_digest: "abc", first_name: "Ana",  last_name: "Rosario", state: "NY", city: "NY", DOB: "01/16/1998")

p "seeding Physical Therapist 🌱"
companies = ["United Health", "Kaiser Foundation", "Anthem Inc.", "Blue Cross Blue Shield", "Metropolitan", "CIGNA", "Assurant", "Allied Insurance", "Allstate", "Aflac"]
specialty = ["CCS", "GCS", "OCS", "NCS", "PCS", "OS", "WCS", "ECS", "SCS"]
level = ["PTA", "PT", "DPT"]
10.times do 
PhysicalTherapist.create!(
    email: Faker::Internet.email, 
    password_digest: "abc", 
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    profile_picture: Faker::Avatar.image,
    clinic_address: Faker::Address.street_address,
    specialization: specialty.shuffle.second,
    title: level.shuffle.first, 
    insurances: companies.shuffle.first,
    home_visits:Faker::Boolean.boolean,
    about_me: Faker::Lorem.paragraph(sentence_count: 2)
  )
end 

p "seeding appointments 🌱"
# , date: Faker::Date.forward(days: 23)
Appointment.create!(user_id: 1, physical_therapist_id: 4, claim: "Ive been sufering from pain on my lower back for the past 2 weeks", home_visit: true)

p "seeding exercises 🌱"



p "seeding favorites 🌱"

