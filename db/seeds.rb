# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

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
liam = User.create!({ email: "liam@gmail.com", password: "123456" })
puts "- Created user Liam"

puts "------------------"

puts "Creating memories:"

memory = Memory.create!({ date: "31-07-1980", title: "I am born", description: "My mum and dad were probably the happiest people alive.", user: User.first })
memory = Memory.create!({ date: "31-10-1981", title: "Death of my parents", description: "Voldemort murdered my parents. I survived. Voldemort's died - at least that's what most people believed at first", user: User.first })
puts "- Created Harry's memories"

memory = Memory.create!({ date: "19-09-1979", title: "My birth", description: "My mum and dad were probably the happiest people alive.", user: User.second })
memory = Memory.create!({ date: "01-09-1991", title: "First Day at Hogwarts", description: "I am a witch! They say HOgwarts is the best school for Witchcraft and Wizardry there is. Of course I read 7 historical books about the history of Hogwarts before my first school year started. I wanted to be well prepared. There was so much to learn!!!", user: User.second })
puts "- Created Hermione's memories"

# Liam's Memories
file = URI.open("https://images.unsplash.com/photo-1599027619757-d2a6c129e388?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80")
memory = Memory.create!({
  date: "01-01-2000",
  title: "Family vacation",
  description: "We took a trip to Hawaii and had the best time. It was so nice to spend time with my family and relax on the beach.",
  user: User.third
})
memory.photo.attach(io: file, filename: "hawaii.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1648249956975-1f2a80888fe6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80")
memory = Memory.create!({
  date: "15-07-2005",
  title: "Winning the basketball national finals",
  description: "I had been training for months for the finals, and winning felt like a huge accomplishment.
  It was a great moment of pride and joy for me and my teammates.",
  user: User.third
})
memory.photo.attach(io: file, filename: "basketball.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1555172849-3a33f70be170?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
memory = Memory.create!({
  date: "01-01-2006",
  title: "First breakup",
  description: "I was heartbroken when my first love broke up with me, but looking back, it taught me a lot about relationships and myself.",
  user: User.third
})
memory.photo.attach(io: file, filename: "breakup.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1580582932707-520aed937b7b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2064&q=80")
memory = Memory.create!({
  date: "07-02-2009",
  title: "Failing an important exam",
  description: "I had put so much time and effort into studying for the English Literature exam, so failing felt like a huge blow. I felt disappointed in myself and like I had let everyone down.",
  user: User.third
})
memory.photo.attach(io: file, filename: "exam.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1616587134660-8ef4dd8a1b7e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1620&q=80")
memory = Memory.create!({
  date: "01-01-2011",
  title: "Losing a loved one",
  description: "Losing my grandma was one of the hardest things I've ever gone through, but it taught me the importance of cherishing the time we have with loved ones.",
  user: User.third
})
memory.photo.attach(io: file, filename: "grandma.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1533854775446-95c4609da544?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
memory = Memory.create!({
  date: "31-01-2013",
  title: "Graduating college",
  description: "Graduating college was a huge accomplishment for me, and I was so proud to walk across the stage and receive my diploma.",
  user: User.third
})
memory.photo.attach(io: file, filename: "graduation.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1615423263169-36d38558bd53?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1769&q=80")
memory = Memory.create!({
  date: "18-06-2013",
  title: "A car accident",
  description: "I was involved in a car accident that left me with minor injuries. It was a scary experience, and it made me realize how fragile life can be.",
  user: User.third
})
memory.photo.attach(io: file, filename: "accident.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1586699253884-e199770f63b9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
memory = Memory.create!({
  date: "01-01-2015",
  title: "Traveling solo",
  description: "I took a solo trip to Europe and it was an incredible experience. It taught me a lot about independence and self-reliance.",
  user: User.third
})
memory.photo.attach(io: file, filename: "solo.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1610563166150-b34df4f3bcd6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1552&q=80")
memory = Memory.create!({
  date: "09-07-2016",
  title: "Starting a new job",
  description: "Starting a new job as Software Developer was both exciting and nerve-wracking. I felt a lot of pressure to perform well and make a good impression, but ultimately, it was a positive experience that helped me grow and develop professionally.",
  user: User.third
})
memory.photo.attach(io: file, filename: "softdev.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1520854221256-17451cc331bf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
memory = Memory.create!({
  date: "20-12-2019",
  title: "Getting married",
  description: "Marrying my partner was one of the happiest moments of my life. It felt like a new beginning, and I was filled with love and joy.",
  user: User.third
})
memory.photo.attach(io: file, filename: "wedding.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1606914901970-8b9740394111?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
memory = Memory.create!({
  date: "25-12-2020",
  title: "Spending Christmas alone",
  description: "Due to the pandemic, I had to spend Christmas far from my relatives. It was a difficult and lonely experience, and it left me feeling sad and isolated.",
  user: User.third
})
memory.photo.attach(io: file, filename: "christmas.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1564846824194-346b7871b855?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
memory = Memory.create!({
  date: "01-01-2022",
  title: "Starting my own business",
  description: "Starting my own business was a big risk, but it's been so rewarding to see it grow and succeed.",
  user: User.third
})
memory.photo.attach(io: file, filename: "business.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1504439158909-5a2f08876082?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1771&q=80")
memory = Memory.create!({
  date: "11-03-2023",
  title: "The birth of a child",
  description: "Holding my newborn son for the first time was an indescribable feeling. I felt overwhelmed with love and gratitude, and I knew that my life would never be the same.",
  user: User.third
})
memory.photo.attach(io: file, filename: "child.png", content_type: "image/png")
memory.save

puts "- Created Liam's memories"
# End

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
