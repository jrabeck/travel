# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create ([
	{first_name: "Jake", last_name: "Rabeck", email: "jakerabeck@gmail.com", password: "Jakeee", password_confirmation: "Jakeee"},
	{first_name: "Bernie", last_name: "Sanders", email: "berniesanders@love.gov", password: "Bernie", password_confirmation: "Bernie"},
	{first_name: "John", last_name: "Lennon", email: "johnlennon@AppleCorp.com", password: "Johnnn", password_confirmation: "Johnnn"},
	])

trips = Trip.create ([
	{name: "Mr. Rabeck, and Sen. Sanders Go to Washington"},
	{name: "Jake and John Jam at Abbey Road Studios"},
	{name: "Testtrip"},
	])

stops = Stop.create ([
	{name: "The White House", address: "1600 Pennsylvania Avenue", trip_id: 1, order: 1},
	{name: "Abbey Road Studios", address: "3 Abbey Rd, London NW8 9AY, UK", trip_id: 2, order: 1},
	{name: "Apple Corp", address: "95 Wigmore Street", trip_id: 2, order: 2}
	])

follows = Follow.create ([
	{follower_id: 1, following_id: 2},
	{follower_id: 1, following_id: 3},
	{follower_id: 2, following_id: 1},
	{follower_id: 3, following_id: 2}
	])

trip_comments = TripComment.create ([
	{comment: "The trip of a generation!", trip_id: 1, user_id: 1},
	{comment: "Thank you for your contribution to America!", trip_id: 2, user_id: 2}
	])

usertrip = Usertrip.create ([
	{user_id: 1, trip_id: 1},
	{user_id: 2, trip_id: 1},
	{user_id: 1, trip_id: 2},
	{user_id: 3, trip_id: 2},
	{user_id: 1, trip_id: 3},
	{user_id: 2, trip_id: 3},
	{user_id: 3, trip_id: 3},
	])

