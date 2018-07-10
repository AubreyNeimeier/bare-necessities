# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#EVENTS
a = Event.create!(title: "Work", description: "opener", date: "2018-07-10", date_object: "2018-7-10", start_time: "4pm", end_time: "5pm", user_id: 1 )
b = Event.create!(title: "workout", description: "legs", date: "2018-07-11", date_object: "2018-07-11", start_time: "9pm", end_time: "10pm", user_id: 1 )
c = Event.create(title: "yoga", description: "yoga", date: "2018-07-12", date_object: "2018-07-12", start_time: "7am", end_time: "8am", user_id: 1 )



puts "seeded dbase"