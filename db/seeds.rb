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


file2 = URI.open('https://media.istockphoto.com/photos/empty-underground-parking-lot-picture-id1293596302?b=1&k=20&m=1293596302&s=170667a&w=0&h=uVo6P3HPD6bPwEP5eboDVX_m_Uwyx_dJiuxh3hQNcIU=')
parking2 = Parking.create(name: "ParkMe" , address: "Grand-Port, Mauritius" , description: "Fully secure Parking Area with Cameras and Guards" , number_of_slots: 35 , fees: 50 ,available_slots: 35 ,user_id: User.last)
parking2.photo.attach(io: file2, filename: 'CarPark 3', content_type: 'image/png')


file3 = URI.open('https://images.unsplash.com/photo-1590674899484-d5640e854abe?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGFya2luZ3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
parking3 = Parking.create(name: "La Croisette Parking" , address: "Grand-Baie, Mauritius" , description: "Covered Parking Space with Guards and Security System" , number_of_slots: 45 , fees: 80  ,available_slots: 45 ,user_id: User.last)
parking3.photo.attach(io: file3, filename: 'CarPark 4', content_type: 'image/png')


file4 = URI.open('https://images.unsplash.com/photo-1573348722427-f1d6819fdf98?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHBhcmtpbmd8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
parking4 = Parking.create(name: "Safe Parking" , address: "Rose-Belle, Mauritius", description: "Safe & Secure Parking Area under Camera Surveillance" , number_of_slots: 35 , fees: 50  ,available_slots: 35 ,user_id: User.last)
parking4.photo.attach(io: file4, filename: 'CarPark 5', content_type: 'image/png')


file5 = URI.open('https://images.unsplash.com/photo-1573348722427-f1d6819fdf98?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHBhcmtpbmd8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
parking5 = Parking.create(name: "Les Kocottes" , address: "St-Pierre, Mauritius" , description: "Parking Area with Cameras and Guards" , number_of_slots: 55 , fees: 60  ,available_slots: 55 ,user_id: User.last)
parking5.photo.attach(io: file5, filename: 'CarPark 6', content_type: 'image/png')


file6 = URI.open('https://images.unsplash.com/photo-1604063155785-ee4488b8ad15?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBhcmtpbmd8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
parking6 = Parking.create(name: "Easy Park" , address: "Trois Boutiques, Mauritius" , description: "Parking Slots with latest Surveillance Systems" , number_of_slots: 110 , fees:120  ,available_slots: 110 ,user_id: 1)
parking6.photo.attach(io: file6, filename: 'CarPark 7', content_type: 'image/png')


file7 = URI.open('https://images.unsplash.com/photo-1569633586753-4cfeaa15bab5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBhcmtpbmd8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
parking7 = Parking.create(name: "The Parking Spot" , address: "Phoenix, Mauritius", description: "Fully secure Parking Area with Cameras and Security Personals" , number_of_slots: 55 , fees: 85  ,available_slots: 55 ,user_id: User.last)
parking7.photo.attach(io: file7, filename: 'CarPark 8', content_type: 'image/png')


file8 = URI.open('https://media.istockphoto.com/photos/parking-barrier-in-the-underground-car-park-picture-id1268330821?b=1&k=20&m=1268330821&s=170667a&w=0&h=YOO-FAcXQFqhaclRIHazdEn4ZO7n9Nz3wdavfy4c7V8=')
parking8 = Parking.create(name: "Park & Shop" , address: "Bagatelle, Mauritius", description: "Parking Spaces with Cameras and Guards" , number_of_slots: 95 , fees: 90  ,available_slots: 95 ,user_id: User.last)
parking8.photo.attach(io: file8, filename: 'CarPark 9', content_type: 'image/png')


file9 = URI.open('https://media.istockphoto.com/photos/empty-parking-lot-at-night-picture-id1308868779?b=1&k=20&m=1308868779&s=170667a&w=0&h=-q0cYV-53sUtgr8Axm5HeS0ulbSaQtUCC9CeihnkQYA=')
parking9 = Parking.create(name: "Spot Hero" , address: "Grand Sable, Mauritius", description: "Fully secure Parking Area with Cameras and Guards" , number_of_slots: 45 , fees: 65  ,available_slots: 45 ,user_id: User.last)
parking9.photo.attach(io: file9, filename: 'CarPark 10', content_type: 'image/png')


file10 = URI.open('https://images.unsplash.com/photo-1616363088386-31c4a8414858?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cGFya2luZ3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
parking10 = Parking.create(name: "Best Parking" , address: "La Croissette, Mauritius", description: "Fully secure Parking Area with Cameras and Guards" , number_of_slots: 75 , fees: 80  ,available_slots: 75 ,user_id: User.last)
parking10.photo.attach(io: file10, filename: 'CarPark 11', content_type: 'image/png')

puts "Seed Completed"