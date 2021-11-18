# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Parking.destroy_all
Booking.destroy_all
Review.destroy_all

Parking.create(name: "CarPark 1" , address: "Port-Louis" , description: "Fully secure Parking Area with Cameras and Guards" , number_of_slots: 10 , fees: 10  ,available_slots: 10 ,user_id: User.last )

Parking.create(name: "CarPark 2" , address: "Rose-Hill" , description: "Fully secure Parking Area with Cameras and Guards" , number_of_slots: 10 , fees: 20  ,available_slots: 10 ,user_id: User.last )

Parking.create(name: "CarPark 3" , address: "Grand-Port" , description: "Fully secure Parking Area with Cameras and Guards" , number_of_slots: 10 , fees: 30  ,available_slots: 10 ,user_id: User.last )

Parking.create(name: "CarPark 4" , address: "Grand Bay" , description: "Fully secure Parking Area with Cameras and Guards" , number_of_slots: 10 , fees: 40  ,available_slots: 10 ,user_id: User.last )

Parking.create(name: "CarPark 5" , address: "Rose-Belle", description: "Fully secure Parking Area with Cameras and Guards" , number_of_slots: 10 , fees: 50  ,available_slots: 10 ,user_id: User.last )

Parking.create(name: "CarPark 6" , address: "Belle-Rose" , description: "Fully secure Parking Area with Cameras and Guards" , number_of_slots: 10 , fees: 60  ,available_slots: 10 ,user_id: User.last )

Parking.create(name: "CarPark 7" , address: "Ebene" , description: "Fully secure Parking Area with Cameras and Guards" , number_of_slots: 10 , fees: 70  ,available_slots: 10 ,user_id: User.last )

Parking.create(name: "CarPark 8" , address: "Phoniex", description: "Fully secure Parking Area with Cameras and Guards" , number_of_slots: 10 , fees: 80  ,available_slots: 10 ,user_id: User.last )



