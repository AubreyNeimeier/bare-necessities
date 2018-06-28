# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#EVENTS
a = Event.create(title: "Work", description: "opener", date: "2018-06-30", date_object: "2018-06-30", start_time: "4pm", end_time: "5pm", user_id: 1 )
b = Event.create(title: "workout", description: "legs", date: "2018-06-29", date_object: "2018-06-29" start_time: "9pm", end_time: "10pm", user_id: 1 )
c = Event.create(title: "yoga", description: "yoga", date: "2018-07-01", date_object: "2018-07-01", start_time: "7am", end_time: "8am", user_id: 1 )

task_one = Task.create(description: "wash workout clothes", status: "open")
task_one.user = aubs
task_one.event = b

task_one_b = Task.create(description: "charge bluetooth headphones", status: "open")
task_one_b.user = aubs
task_one_b.event = b

task_two = Task.create(description: "Pack a lunch", status: "open")
task_two.user = aubs
task_two.event = a

task_three = Task.create(description: "Schedule hot yoga class, clean mat", status: "open")
task_three.user = aubs
task_three.event = c

aubs = User.create(username: "aubs", password: "password")

a.user = aubs
b.user = aubs
c.user = aubs




