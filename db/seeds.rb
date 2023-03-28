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
liam = User.create!({ email: "liam@gmail.com", password: "carpediem" })
puts "- Created user Liam"

puts "------------------"

puts "Creating memories:"

# Liam's Memories

file = URI.open("https://images.unsplash.com/photo-1604807788276-58c6ef92a0f9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2072&q=80")
memory = Memory.create!({
  date: "25-05-1990",
  title: "My birth",
  description: "My mum always tells the story like this: 'We had some friends over at our place when I felt the contractions starting. We rushed to the car. It was raining heavily. Heavy wind blowing. At that point I new you'd be a little thunderstorm'.",
  user: User.first
})
memory.photo.attach(io: file, filename: "birth.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1523820843652-f6b30d535239?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1208&q=80")
memory = Memory.create!({
  date: "14-07-1996",
  title: "Holiday with my grandparents",
  description: "The time I spent with my grandparents as a child was always special. When I went to Corsica with them, it felt like a an adventure. My parents stayed at home and I felt very grown-up. This holiday is one of my happiest childhood memories.",
  user: User.first
})
memory.photo.attach(io: file, filename: "holiday.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1514466256797-efd55fa1bf4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=721&q=80")
memory = Memory.create!({
  date: "20-09-1998",
  title: "Learning to read",
  description: "I remember this being a huge mental leap for me. Suddenly my world grew so much bigger, my books giving me access to unknown places and a sense of autonomy. I could visit these places without my parents. It was I who decided which one I would visit next.",
  user: User.first
})
memory.photo.attach(io: file, filename: "reading.png", content_type: "image/png")
memory.save


file = URI.open("https://images.unsplash.com/photo-1599027619757-d2a6c129e388?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80")
memory = Memory.create!({
  date: "07-06-2000",
  title: "Family vacation",
  description: "We took a trip to Hawaii and had the best time. It was so nice to spend time with my family and relax on the beach. However, I wasn't prepared for what would happen soon after.",
  user: User.first
})
memory.photo.attach(io: file, filename: "hawaii.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1514466256797-efd55fa1bf4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=721&q=80")
memory = Memory.create!({
  date: "12-08-2000",
  title: "Mum and dad's breakup",
  description: "It came out of nowhere, just a couple of weeks after our vacation on Hawaii. I didn't understand it. I hadn't witnessed any arguments between them on our holiday. But when they split up, all hell broke loose. How could I ever trust my own senses again? Their breakup left me disillusioned and speechless.",
  user: User.first
})
memory.photo.attach(io: file, filename: "reading.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1541199249251-f713e6145474?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80")
memory = Memory.create!({
  date: "30-06-2002",
  title: "Difficult years",
  description: "The time after my parents' breakup was very difficult for me. They found new partners. I lost appetite and my marks in school dropped. At the same time I was very uneasy and tense. The slightest thing would have me boil over and release my anger.",
  user: User.first
})
memory.photo.attach(io: file, filename: "difficult.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1515523110800-9415d13b84a8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
memory = Memory.create!({
  date: "01-11-2002",
  title: "Finding purpose in basketball",
  description: "Training helped me regain a sense of purpose as a teenager. It made me believe in myself again.",
  user: User.first
})
memory.photo.attach(io: file, filename: "basketball.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1567658291083-a4a1fa80e245?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
memory = Memory.create!({
  date: "15-07-2005",
  title: "Winning the regional finals",
  description: "I had trained for months for the basketball finals. Winning not only felt like a huge accomplishment - it also made me realize how persevering I can be.",
  user: User.first
})
memory.photo.attach(io: file, filename: "basketball_final.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1555172849-3a33f70be170?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
memory = Memory.create!({
  date: "17-02-2006",
  title: "First love",
  description: "Melinda went to my school, but I only really got to know her in summer camp. Today I wonder how much we actually had in common. For some months we basically spent all of our free time together. The feelings were intense like the world depended on them.",
  user: User.first
})
memory.photo.attach(io: file, filename: "first_love.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1555172849-3a33f70be170?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
memory = Memory.create!({
  date: "23-04-2007",
  title: "First breakup",
  description: "I was heartbroken when Melinda broke up with me. But looking back, it taught me a lot about relationships and myself.",
  user: User.first
})
memory.photo.attach(io: file, filename: "breakup.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1580582932707-520aed937b7b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2064&q=80")
memory = Memory.create!({
  date: "07-06-2009",
  title: "Finishing highschool",
  description: "Finally. I just wanted to move on. Even if I had no idea what that could be.",
  user: User.first
})
memory.photo.attach(io: file, filename: "highschool.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1607349913338-fca6f7fc42d0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80")
memory = Memory.create!({
  date: "01-07-2009",
  title: "What next?",
  description: "After highschool I tried some things... Worked at the local supermarket. Helped out in a carpenter's workshop. Short internship at a regional newspaper. ",
  user: User.first
})
memory.photo.attach(io: file, filename: "supermarket.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1616587134660-8ef4dd8a1b7e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1620&q=80")
memory = Memory.create!({
  date: "04-11-2011",
  title: "Losing grandma",
  description: "When grandma died, my age felt like a burden for the first time. Was it just me or had time started to speed up in the last 2-3 years? I realized the importance of cherishing the time I have with my loved ones and with myself.",
  user: User.first
})
memory.photo.attach(io: file, filename: "grandma.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1533854775446-95c4609da544?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
memory = Memory.create!({
  date: "31-01-2013",
  title: "Graduating college",
  description: "Graduating college was a huge accomplishment for me, and I was so proud to walk across the stage and receive my diploma.",
  user: User.first
})
memory.photo.attach(io: file, filename: "graduation.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1586699253884-e199770f63b9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
memory = Memory.create!({
  date: "23-07-2015",
  title: "Traveling solo",
  description: "I took a solo trip to Europe and it was an incredible experience. It taught me a lot about independence and self-reliance.",
  user: User.first
})
memory.photo.attach(io: file, filename: "solo.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1490723186985-6d7672633c86?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80")
memory = Memory.create!({
  date: "06-09-2015",
  title: "Meeting Maryam",
  description: "While travelling through Europe, I met Maryam in a hostel in Budapest. In the beginning, we just decided to travel together. And then we fell in love.",
  user: User.first
})
memory.photo.attach(io: file, filename: "solo.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1610563166150-b34df4f3bcd6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1552&q=80")
memory = Memory.create!({
  date: "09-07-2016",
  title: "Starting a new job",
  description: "Starting a new job as Software Developer was both exciting and nerve-wracking. I felt a lot of pressure to perform well and make a good impression, but ultimately, it was a positive experience that helped me grow and develop professionally.",
  user: User.first
})
memory.photo.attach(io: file, filename: "softdev.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1520854221256-17451cc331bf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
memory = Memory.create!({
  date: "20-12-2019",
  title: "Marrying Maryam",
  description: "Marrying my partner was one of the happiest moments of my life. It felt like a new beginning, and I was filled with love and joy.",
  user: User.first
})
memory.photo.attach(io: file, filename: "wedding.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1606914901970-8b9740394111?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
memory = Memory.create!({
  date: "25-12-2020",
  title: "Covid winter",
  description: "Stayed at home a lot. Missed friends and family during lockdowns. It was a sad and lonely experience.",
  user: User.first
})
memory.photo.attach(io: file, filename: "christmas.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1564846824194-346b7871b855?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
memory = Memory.create!({
  date: "01-01-2022",
  title: "Starting my own business",
  description: "Starting my own business was a big risk, but it's been so rewarding to see it grow and succeed. I can't express how grateful I was for all the support from Maryam, my family and my friends.",
  user: User.first
})
memory.photo.attach(io: file, filename: "business.png", content_type: "image/png")
memory.save

file = URI.open("https://images.unsplash.com/photo-1511376979163-f804dff7ad7b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
memory = Memory.create!({
  date: "11-03-2023",
  title: "Psychotherapy",
  description: "Started therapy. I've wanted to do this for while. Those long Covid-months got me thinking. I realized I want to work on myself to become more reliable emotionally. For that I probably need to look into some unpleasant areas at the back of my mind. My psychologist suggested we could take a closer look at my biography together.",
  user: User.first
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
