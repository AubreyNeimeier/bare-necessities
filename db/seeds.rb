# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#EVENTS
a = Event.create(title: "Work", description: "opener" date: "2018-06-01", start_time: "4pm", end_time: "5pm", user_id: 1 )
b = Event.create(title: "workout", description: "legs" date: "2018-06-14", start_time: "9pm", end_time: "10pm", user_id: 1 )
c = Event.create(title: "yoga", description: "yoga" date: "2018-06-14", start_time: "7am", end_time: "8am", user_id: 1 )

task_one = Task.create(description: "wash workout clothes", status: "open")
b.tasks << task_one

task_two = Task.create(description: "Pack a lunch", status: "open")
a.tasks << task_two

