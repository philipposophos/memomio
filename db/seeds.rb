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

file = URI.open("https://images.unsplash.com/photo-1604807788276-58c6ef92a0f9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2072&q=80")
memory = Memory.create!({
  date: "25-05-1990",
  title: "My birth",
  description: "My mum always tells the story like this: 'We had some friends over at our place when I felt the contractions starting. We rushed to the car. It was raining heavily. Heavy wind blowing. At that point I new you'd be a little thunderstorm'.",
  user: User.third
})
memory.photo.attach(io: file, filename: "birth.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1514466256797-efd55fa1bf4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=721&q=80")
memory = Memory.create!({
  date: "20-09-1998",
  title: "Learning to read",
  description: "I remember this being a huge mental leap for me. Suddenly my world grew so much bigger, my books giving me access to unknown places and a sense of autonomy. I could visit these places without my parents. It was I who decided which one I would visit next.",
  user: User.third
})
memory.photo.attach(io: file, filename: "reading.png", content_type: "image/png")
memory.save


file = URI.open("https://images.unsplash.com/photo-1599027619757-d2a6c129e388?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80")
memory = Memory.create!({
  date: "07-06-2000",
  title: "Family vacation",
  description: "We took a trip to Hawaii and had the best time. It was so nice to spend time with my family and relax on the beach. One of the happiest family memories I have. However, I wasn't prepared for what would happen soon after.",
  user: User.third
})
memory.photo.attach(io: file, filename: "hawaii.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1514466256797-efd55fa1bf4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=721&q=80")
memory = Memory.create!({
  date: "12-08-2000",
  title: "Mum and dad's breakup",
  description: "It came out of nowhere, just a couple of weeks after our vacation on Hawaii. I didn't understand it. I had witnessed no arguments between them. But when they split up, all hell broke loose. How could I ever trust my own senses again? Their breakup left me disillusioned and speechless.",
  user: User.third
})
memory.photo.attach(io: file, filename: "reading.png", content_type: "image/png")
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
  date: "17-02-2006",
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
  date: "04-11-2011",
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
  date: "23-07-2015",
  title: "Traveling solo",
  description: "I took a solo trip to Europe and it was an incredible experience. It taught me a lot about independence and self-reliance.",
  user: User.third
})
memory.photo.attach(io: file, filename: "solo.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1490723186985-6d7672633c86?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80")
memory = Memory.create!({
  date: "06-09-2015",
  title: "Meeting Maryam",
  description: "While travelling through Europe, I met Maryam in a hostel in Budapest. In the beginning, we just decided to travel together. And then we fell in love.",
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
  title: "Marrying Maryam",
  description: "Marrying my partner was one of the happiest moments of my life. It felt like a new beginning, and I was filled with love and joy.",
  user: User.third
})
memory.photo.attach(io: file, filename: "wedding.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1606914901970-8b9740394111?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
memory = Memory.create!({
  date: "25-12-2020",
  title: "Spending Christmas alone",
  description: "Due to a Covid infection, I had to spend Christmas isolated at home and far away from my relatives. It was a sad and lonely experience.",
  user: User.third
})
memory.photo.attach(io: file, filename: "christmas.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1564846824194-346b7871b855?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
memory = Memory.create!({
  date: "01-01-2022",
  title: "Starting my own business",
  description: "Starting my own business was a big risk, but it's been so rewarding to see it grow and succeed. For the first time in my life I felt like: everything I want is possible.",
  user: User.third
})
memory.photo.attach(io: file, filename: "business.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1514929781313-76fcbb2136b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80")
memory = Memory.create!({
  date: "11-03-2023",
  title: "Psychotherapy",
  description: "I haven't been well lately, I started therapy with a psychologist named Alice Lambert. Mrs. Lambert suggested we took a closer look at my biography together.",
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
