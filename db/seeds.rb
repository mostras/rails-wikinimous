# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "---------------- STARTING CREATION ----------------"

30.times do
  article = Article.new(
    title: Faker::Book.title,
    content: Faker::Books::Lovecraft.sentence
  )
  article.save
  puts "#{article.title} created!"
end

puts "---------------- ENDING CREATION ----------------"
