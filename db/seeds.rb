# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Event.destroy_all
# Calendar.destroy_all
# User.destroy_all

event1 = Event.create(event: "Dentist Appt", location: "Cool Smilez", start_time: "2020-05-08 01:30", end_time: "2020-05-05 02:30:")
event2 = Event.create(event: "Teach", location: "Flatiron Campus", start_time: "2020-05-10 07:30", end_time: "2020-05-10 10:00")
event3 = Event.create(event: "Oil Change", location: "Jiffy Lube", start_time: "2020-05-15 03:00", end_time: "2020-05-15 04:15")

#
# calendar1 = Calendar.create()
user1 = User.create(username: "Ahmed")
