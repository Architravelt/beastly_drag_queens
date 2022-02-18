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

Question.create!(
  quiz_id: quiz.first.id,
  question: "What's your favourite colour?")

Question.create!(
  quiz_id: quiz.first.id,
  question: "What's your favourite element?")

Question.create!(
   quiz_id: quiz.first.id,
  question: "What's your favourite music genre?")

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







