# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "creating quizzes"
puts "creating questions"
puts "creating answers"
puts "creating beasts"
Beast.destroy_all
Quiz.destroy_all
Question.destroy_all
Answer.destroy_all
puts "Database cleaned"

Quiz.create!(
  name: 'Beastly Drag Queen Generator')

Beast.create!(
  name: "Cougar",
  animal: "puma",
  description: "Always on the prowl",
  explanation: "You love to eat young bucks for breakfast.
  If breakfast is at midnight. slink and diamonds is all the wardobe you need")

Beast.create!(
  name: "Swan princess",
  animal: "swan",
  description: "Pure, sugar coated evil",
  explanation: "Precious, precocious and protected")

# Blood red glider butterfly is also a good option or siamese fighting fish - Betta
Beast.create!(
  name: "Strawberry Poison Delight",
  animal: "frog",
  description: ,
  explanation: )

Beast.create!(
  name: "Jungle Nymph",
  animal: "stickinsect",
  description: "With legs all the way to there, no-one can catch you",
  explanation: )

# Question 1.
Question.create!(
  quiz_id: quiz.first.id,
  name: "one",
  question: "What's your favourite colour?")

# Question 2.
Question.create!(
  quiz_id: quiz.first.id,
  name: "two",
  question: "What's your favourite element?")

# Question 3.
Question.create!(
  quiz_id: quiz.first.id,
  name: "three"
  question: "What's your favourite music genre?")

# answers for question 1. What's your favourite colour?
Answer.create!(
  letter: "A."
  answer: "Blackest midnight of the soul"
  beast_id:
  question_id: question.first.id)

Answer.create!(
  letter: "B."
  answer: "Tequila Sunrise"
  beast_id:
  question_id:question.first.id)

Answer.create!(
  letter: "C."
  answer: "Poison Ivy"
  beast_id:
  question_id: question.first.id)

Answer.create!(
  letter: "D."
  answer: "Angel wings and unicorn's breath"
  beast_id:
  question_id: question.first.id)







