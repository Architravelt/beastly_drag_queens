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
  explanation: "You eat young bucks for breakfast.
  If breakfast is at midnight. Slink and diamonds is all the wardobe you need")

Beast.create!(
  name: "Swan princess",
  animal: "swan",
  description: "Pure, sugar coated evil",
  explanation: "Precious, precocious and protected")

# Blood red glider butterfly is also a good option or siamese fighting fish - Betta
Beast.create!(
  name: "Strawberry Poison Delight",
  animal: "frog",
  description: "Vibrant venom on webbed feet",
  explanation: "You live to slay the competition")

Beast.create!(
  name: "Jungle Nymph",
  animal: "stickinsect",
  description: "With legs all the way to there, no-one can catch you",
  explanation: "You love to loom down on the competition")

puma = Beast.find_by(animal: "puma").first.id
frog = Beast.find_by(animal: "frog").first.id
stickinsect = Beast.find_by(animal: "stickinsect").first.id
swan = Beast.find_by(animal: "swan").first.id

# Question 1.
Question.create!(
  quiz_id: quiz.first.id,
  name: "one",
  question: "What's your favourite colour?")

# answers for question 1. What's your favourite colour?
Answer.create!(
  letter: "A."
  answer: "A: Blackest midnight of the soul"
  beast_id: puma
  question_id: question.first.id)

Answer.create!(
  letter: "B."
  answer: "B: Tequila Sunrise"
  beast_id: frog
  question_id:question.first.id)

Answer.create!(
  letter: "C."
  answer: "C: Poison Ivy"
  beast_id: stickinsect
  question_id: question.first.id)

Answer.create!(
  letter: "D."
  answer: "D: Angel wings and unicorn's breath"
  beast_id: swan
  question_id: question.first.id)

# Question 2.
Question.create!(
  quiz_id: quiz.first.id,
  name: "two",
  question: "What's your favourite element?")

# Answers for question two, what's your favourite element
Answer.create!(
  letter: "A."
  answer: "A: Earth"
  :beast_id = Beast.find_by(animal: "puma").first.id
  :question_id = Question.find by(name: "two").first.id

Answer.create!(
  letter: "B."
  answer: "B: Air"
  :beast_id = Beast.find_by(animal: "swan").first.id
  :question_id = Question.find by(name: "two").first.id

Answer.create!(
  letter: "C."
  answer: "C: Fire"
  :beast_id = Beast.find_by(animal: "stickinsect").first.id
  :question_id = Question.find by(name: "two").first.id

Answer.create!(
  letter: "D."
  answer: "D: Water"
  :beast_id = Beast.find_by(animal: "frog").first.id
  :question_id = Question.find by(name: "two").first.id

# Question 3.
Question.create!(
  quiz_id: quiz.first.id,
  name: "three"
  question: "What's your favourite music genre?")



# :type_id => ProductType.where(:name => "Furniture").first.id
# restaurant = Restaurant.find_by(name: "La Tour d'Argent")



