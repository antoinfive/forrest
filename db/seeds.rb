# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(name: "Sam", email: "sam.vary@gmail.com", password: "1234", password_confirmation: "1234")
User.create(name: "Antoin", email: "antoinfive@gmail.com", password: "1234", password_confirmation: "1234")
User.create(name: "Steven", email: "steven@forrest.com", password: "1234", password_confirmation: "1234")
User.create(name: "Sophie", email: "sophie@forrest.com", password: "1234", password_confirmation: "1234")
User.create(name: "Josh", email: "josh@forrest.com", password: "1234", password_confirmation: "1234")
User.create(name: "Skip", email: "skip@forrest.com", password: "1234", password_confirmation: "1234")
User.create(name: "Kevin", email: "kevin@forrest.com", password: "1234", password_confirmation: "1234")
User.create(name: "Beard", email: "beard@forrest.com", password: "1234", password_confirmation: "1234")

Tournament.create(title: "Flatiron Invitational 2016", description: "The original tournament!", num_rounds: 4)



Match.create(player1: 3, player2: 4, player1_score: 10, player2_score: 21)
Match.create(player1: 5, player2: 6, player1_score: 19, player2_score: 21)
Match.create(player1: 7, player2: 8, player1_score: 19, player2_score: 21)
Match.create(player1: 9, player2: 10, player1_score: 1, player2_score: 21)
