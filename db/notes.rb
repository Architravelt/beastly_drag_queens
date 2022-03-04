# answers for question 1. What's your favourite colour?
Answer.create!(
  letter: "A.",
  answer: "A: Blackest midnight of the soul",
  beast_id: puma,
  question_id: Question.first.id)

Answer.create!(
  letter: "B.",
  answer: "B: Tequila Sunrise",
  beast_id: frog,
  question_id:Question.first.id)

Answer.create!(
  letter: "C.",
  answer: "C: Poison Ivy",
  beast_id: stickinsect,
  question_id: Question.first.id)

Answer.create!(
  letter: "D.",
  answer: "D: Angel wings and unicorn's breath",
  beast_id: swan,
  question_id: Question.first.id)

# Question 2.
Question.create!(
  quiz_id: Quiz.first.id,
  name: "two",
  question: "What's your favourite element?")

two = Question.find_by(name: "two").id

# Answers for question two, what's your favourite element?
Answer.create!(
  letter: "A.",
  answer: "A: Earth",
  beast_id: puma,
  question_id: two)

Answer.create!(
  letter: "B.",
  answer: "B: Air",
  beast_id: swan,
  question_id: two)

Answer.create!(
  letter: "C.",
  answer: "C: Fire",
  beast_id: stickinsect,
  question_id: two)

Answer.create!(
  letter: "D.",
  answer: "D: Water",
  beast_id: frog,
  question_id: two)

# Question 3.
Question.create!(
  quiz_id: Quiz.first.id,
  name: "three",
  question: "What's your favourite music?")

three = Question.find_by(name: "three").id

# answers for question three, what's your favourite music?

Answer.create!(
  letter: "A.",
  answer: "A: Death Metal",
  beast_id: puma,
  question_id: two)

Answer.create!(
  letter: "B.",
  answer: "B: Tchaikovsky",
  beast_id: swan,
  question_id: two)

Answer.create!(
  letter: "C.",
  answer: "C: Disco",
  beast_id: stickinsect,
  question_id: three)

Answer.create!(
  letter: "D.",
  answer: "D: Hip Hop",
  beast_id: frog,
  question_id: two)

# :type_id => ProductType.where(:name => "Furniture").first.id
# restaurant = Restaurant.find_by(name: "La Tour d'Argent")



