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
