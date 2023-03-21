# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
User.destroy_all
Memory.destroy_all
EmotionalTag.destroy_all

puts "------------------"

puts "Creating users:"
andy = User.create!({ email: "harry@hogwarts.com", password: "123456" })
puts "- Created user Harry"
marta = User.create!({ email: "hermione@hogwarts.com", password: "123456" })
puts "- Created user Hermione"

puts "------------------"

puts "Creating memories:"

memory = Memory.create!({ date: "31-07-1980", title: "I am born", description: "My mum and dad were probably the happiest people alive.", user: User.first })
memory = Memory.create!({ date: "31-10-1981", title: "Death of my parents", description: "Voldemort murdered my parents. I survived. Voldemort's died - at least that's what most people believed at first", user: User.first })
puts "- Created Harry's memories"

memory = Memory.create!({ date: "19-09-1979", title: "My birth", description: "My mum and dad were probably the happiest people alive.", user: User.second })
memory = Memory.create!({ date: "01-09-1991", title: "First Day at Hogwarts", description: "I am a witch! They say HOgwarts is the best school for Witchcraft and Wizardry there is. Of course I read 7 historical books about the history of Hogwarts before my first school year started. I wanted to be well prepared. There was so much to learn!!!", user: User.second })
puts "- Created Hermione's memories"

puts "------------------"

puts "Creating emotional tags:"
puts "- good"
good = EmotionalTag.create!({ emotion: "good" })
puts "- okay"
okay = EmotionalTag.create!({ emotion: "okay" })
puts "- bad"
bad = EmotionalTag.create!({ emotion: "bad" })
puts "- trigger"
trigger = EmotionalTag.create!({ emotion: "trigger" })
puts "Created all 4 emotional tags."

puts "------------------"

puts "Seeding process finished"
