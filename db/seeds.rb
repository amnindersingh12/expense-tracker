# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Seeding users'
User.create(email:"user1@gmail.com", first_name:"user1",last_name:"expenso",password:"11111111",username:"user1")
User.create(email:"user2@gmail.com", first_name:"user2",last_name:"expenso",password:"11111111",username:"user2")
User.create(email:"user3@gmail.com", first_name:"user3",last_name:"expenso",password:"11111111",username:"user3")
User.create(email:"user4@gmail.com", first_name:"user4",last_name:"expenso",password:"11111111",username:"user4")
puts 'Seeding done'

puts 'Seeding Categories'
Category.create(category: "Mobile")
Category.create(category: "Home")
Category.create(category: "Food")
Category.create(category: "Study")
Category.create(category: "Other")
puts 'Seeding Done'

puts 'Seeding Expenses'
Expense.create(category_id: 1, user_id: 1, amount: 10, date:Date.parse("29-10-2022"))
Expense.create(category_id: 2, user_id: 4, amount: 40, date:Date.parse("30-10-2022"))
Expense.create(category_id: 3, user_id: 3, amount: 50, date:Date.parse("1-11-2022"))
Expense.create(category_id: 4, user_id: 2, amount: 20, date:Date.parse("19-10-2022"))
puts 'Seeding Done'
