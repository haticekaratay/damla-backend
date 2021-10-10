
User.create(username: "Hatice", email: "email@email.com", password: '1234')
puts "User created"

Income.create(name: "Teaching", amount: 3000.0, user_id:1)
Income.create(name: "Passive", amount: 120.0, user_id:1)
Income.create(name: "Tutoring", amount: 200.0, user_id:1)

puts "Income seed data is created"

Expense.create(name: "Rent", amount: 1400.0, budget: 1400.0 ,user_id:1)
Expense.create(name: "Utilities", amount: 200.0, budget: 200.0 ,user_id:1)
Expense.create(name: "Groceries", amount: 300.0, budget: 400.0 ,user_id:1)
Expense.create(name: "Hospital", amount: 100.0, budget: 150.0 ,user_id:1)
Expense.create(name: "Subscriptions", amount: 40.0, budget: 40.0 ,user_id:1)
Expense.create(name: "Gym", amount: 60.0, budget: 60.0 ,user_id:1)
Expense.create(name: "Fun", amount: 80.0, budget: 100.0 ,user_id:1)


puts "Expense seed data is created"





