# db/seeds.rb

# Create users
user1 = User.create(username: 'user1', email: 'user1@example.com', password: 'password1')
user2 = User.create(username: 'user2', email: 'user2@example.com', password: 'password2')

# Create places for user1
place1 = user1.places.create(name: 'Paris')
place2 = user1.places.create(name: 'New York')

# Create places for user2
place3 = user2.places.create(name: 'London')

# Create entries
place1.entries.create(title: 'Eiffel Tower', description: 'Visited the Eiffel Tower', occurred_on: Date.today)
place1.entries.create(title: 'Louvre Museum', description: 'Explored the Louvre Museum', occurred_on: Date.today - 1)
place2.entries.create(title: 'Central Park', description: 'Relaxed in Central Park', occurred_on: Date.today - 2)
place3.entries.create(title: 'Big Ben', description: 'Saw Big Ben', occurred_on: Date.today - 3)

puts 'Seed data created successfully.'