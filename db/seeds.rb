# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#EVENTS
a = Event.create!(title: "Work", description: "opener", date: "2018-07-08", date_object: "2018-7-08", start_time: "4pm", end_time: "5pm", user_id: 5 )
b = Event.create!(title: "workout", description: "legs", date: "2018-07-04", date_object: "2018-07-04", start_time: "9pm", end_time: "10pm", user_id: 5 )
c = Event.create(title: "yoga", description: "yoga", date: "2018-07-07", date_object: "2018-07-07", start_time: "7am", end_time: "8am", user_id: 5 )

task_one = Task.create!(description: "wash workout clothes", status: "open", event_id: 13, user_id: 5)



task_one_b = Task.create!(description: "charge bluetooth headphones", status: "open", event_id: 14, user_id: 5)



task_two = Task.create!(description: "Pack a lunch", status: "open", event_id: 15, user_id: 5)


task_three = Task.create!(description: "Schedule hot yoga class, clean mat", status: "open", event_id: 15, user_id: 5)



puts "seeded dbase"