# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

list1 = Tasklist.create(name: "Sound")
list2 = Tasklist.create(name: "Room")

list1.tasks.create(name:"Plug in the speakers", details:"just plug them in")
list1.tasks.create(name:"Plug in the microphones", details:"it will be fun")
list1.tasks.create(name:"Power up the console", details:"DON'T PRESS THE LITTLE RED BUTTON")
list2.tasks.create(name:"Set up chairs", details:"15 rows, each with 12 chairs")
list2.tasks.create(name:"Set up tables in the back", details:"One for the sound team and one for media")
list1.tasks.create(name:"Make the band sound amazing", details:"It's partially their job too...")
list2.tasks.create(name:"Take a nap", details:"We know you're tired...that was a lot of chairs")
