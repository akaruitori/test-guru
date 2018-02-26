# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: 'first@user.net', password:'123')

categories = Category.create([
  {title:'English'}, {title: 'Japanese'}, {title:'Korean'}
  ])

tests = Test.create([
  {title: 'English writing', category_id: 1, user_id: 1},
  {title: 'English writing', level: 1, category_id: 1, user_id: 1},
  {title: 'English grammar', level: 1, category_id: 1, user_id: 1},
  {title: 'English grammar', level: 2, category_id: 1, user_id: 1},
  {title: 'Japanese writing', level: 2, category_id: 2, user_id: 1},
  {title: 'Japanese writing', level: 3, category_id: 2, user_id: 1},
  {title: 'Japanese grammar', level: 2, category_id: 2, user_id: 1}
  ])

questions = Question.create([
  {body: 'Easy English writing question 1', test_id: 1},
  {body: 'Easy English writing question 2', test_id: 1},
  {body: 'Easy English grammar question', test_id: 3},
  {body: 'Hard English grammar question', test_id: 4},
  {body: 'Hard Japanese writing question 1', test_id: 6},
  {body: 'Hard Japanese writing question 2', test_id: 6},
  ])

answers = Answer.create([
  {body: 'Easy English writing answer 1', question_id: 1},
  {body: 'Easy English writing answer 2', question_id: 2},
  {body: 'Easy English grammar answer 1', question_id: 3, correct: true},
  {body: 'Hard English grammar answer 1', question_id: 4},
  {body: 'Japanese writing answer 1', question_id: 5, correct: true},
  {body: 'Japanese writing answer 2', question_id: 6, correct: true}
  ])

tests_taken = TakenTest.create([
  {user_id: 1, test_id: 1},
  {user_id: 1, test_id: 2},
  {user_id: 1, test_id: 3},
  {user_id: 1, test_id: 4},
  {user_id: 1, test_id: 5}
  ])
