# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Starting seeding"

Parking.destroy_all
Booking.destroy_all
Review.destroy_all
User.destroy_all

file = URI.open('https://media.istockphoto.com/photos/parking-lot-in-hong-kong-picture-id1281894399?b=1&k=20&m=1281894399&s=170667a&w=0&h=4c_87MJkTdm0rR0vmiC3kiQflmYejDL3MVBE3aYBpRw=')
parking = Parking.create(name: "i-Park" , address: "Port-Louis, Mauritius" , description: "Fully Secure Parking Area with Cameras and Guards" , number_of_slots: 100 , fees: 100  ,available_slots: 100 ,user_id: User.last)
parking.photo.attach(io: file, filename: 'CarPark 1', content_type: 'image/png')


file1 = URI.open('https://images.unsplash.com/photo-1610956562476-4ba6874ee30a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=869&q=80')
parking1 = Parking.create(name: "Gallery Evershine Parking" , address: "Tamarin, Mauritius" , description: "Covered Parking Area with Cameras" , number_of_slots: 50 , fees: 70  ,available_slots: 50 ,user_id: User.last)
parking1.photo.attach(io: file1, filename: 'CarPark 2', content_type: 'image/png')


puts "Seed Completed"