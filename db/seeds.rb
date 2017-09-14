# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1= User.create(username: "Aury", firstname: "Aury", lastname: "Rodriguez", email: "a@email.com")

category1= Category.create!(name: "Rent", description: "Apartment payment",included: true, operation:"-" ,user: user1)
category2= Category.create!(name: "Travel", description: "Gas, Train, taxi",included: true, operation:"-" ,user: user1)
category3= Category.create!(name: "Supplies", description: "Things for school",included: true, operation:"-" ,user: user1)
category4= Category.create!(name: "Groceries", description: "Food",included: true, operation:"-" ,user: user1)


budget= Budget.create!(name: "General budget", description: "Test",initdate: "09/01/2017", enddate: "09/30/2017", amount: "1000.00", user: user1)


Transaction.create!(note: "Note1", date: "09/01/2017",amount: 100.00 , receipt:"A001", category: category1 )

Transaction.create!(note: "Note2", date: "09/02/2017",amount: 200.00 , receipt:"A002", category: category2 )

Transaction.create!(note: "Note3", date: "09/03/2017",amount: 300.00 , receipt:"A003", category: category3 )

Transaction.create!(note: "Note4", date: "09/04/2017",amount: 400.00 , receipt:"A004", category: category4 )

