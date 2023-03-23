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
memory = Memory.create!({
  date: "01-01-2000",
  title: "Family vacation",
  description: "We took a trip to Hawaii and had the best time. It was so nice to spend time with my family and relax on the beach.",
  user: User.third
})

memory = Memory.create!({
  date: "15-07-2005",
  title: "Winning the basketball national finals",
  description: "I had been training for months for the finals, and winning felt like a huge accomplishment.
  It was a great moment of pride and joy for me and my teammates.",
  user: User.third
})

memory = Memory.create!({
  date: "01-01-2006",
  title: "First breakup",
  description: "I was heartbroken when my first love broke up with me, but looking back, it taught me a lot about relationships and myself.",
  user: User.third
})

memory = Memory.create!({
  date: "07-02-2009",
  title: "Failing an important exam",
  description: "I had put so much time and effort into studying for the English Literature exam, so failing felt like a huge blow. I felt disappointed in myself and like I had let everyone down.",
  user: User.third
})

memory = Memory.create!({
  date: "01-01-2011",
  title: "Losing a loved one",
  description: "Losing my grandma was one of the hardest things I've ever gone through, but it taught me the importance of cherishing the time we have with loved ones.",
  user: User.third
})

memory = Memory.create!({
  date: "31-01-2013",
  title: "Graduating college",
  description: "Graduating college was a huge accomplishment for me, and I was so proud to walk across the stage and receive my diploma.",
  user: User.third
})

memory = Memory.create!({
  date: "18-06-2013",
  title: "A car accident",
  description: "I was involved in a car accident that left me with minor injuries. It was a scary experience, and it made me realize how fragile life can be.",
  user: User.third
})

memory = Memory.create!({
  date: "01-01-2015",
  title: "Traveling solo",
  description: "I took a solo trip to Europe and it was an incredible experience. It taught me a lot about independence and self-reliance.",
  user: User.third
})

memory = Memory.create!({
  date: "09-07-2016",
  title: "Starting a new job",
  description: "Starting a new job as Software Developer was both exciting and nerve-wracking. I felt a lot of pressure to perform well and make a good impression, but ultimately, it was a positive experience that helped me grow and develop professionally.",
  user: User.third
})

memory = Memory.create!({
  date: "20-12-2019",
  title: "Getting married",
  description: "Marrying my partner was one of the happiest moments of my life. It felt like a new beginning, and I was filled with love and joy.",
  user: User.third
})

memory = Memory.create!({
  date: "25-12-2020",
  title: "Spending Christmas alone",
  description: "Due to the pandemic, I had to spend Christmas far from my relatives. It was a difficult and lonely experience, and it left me feeling sad and isolated.",
  user: User.third
})

memory = Memory.create!({
  date: "01-01-2022",
  title: "Starting my own business",
  description: "Starting my own business was a big risk, but it's been so rewarding to see it grow and succeed.",
  user: User.third
})

memory = Memory.create!({
  date: "11-03-2023",
  title: "The birth of a child",
  description: "Holding my newborn son for the first time was an indescribable feeling. I felt overwhelmed with love and gratitude, and I knew that my life would never be the same.",
  user: User.third
})

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
