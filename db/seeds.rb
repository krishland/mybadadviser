# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Politic.destroy_all
User.destroy_all

usertest = User.new(email: "test1@test.com", password: "123456")
unless usertest.save!
  raise
end
usertest = User.new(email: "test2@test.com", password: "123456")
unless usertest.save!
  raise
end
usertest = User.new(email: "test3@test.com", password: "123456")
unless usertest.save!
  raise
end
usertest = User.new(email: "test4@test.com", password: "123456")
unless usertest.save!
  raise
end
test1 = Politic.new(name: "Trump", country: "USA", description: "test", picture: "test", first_stupid: "fake news!", second_stupid: "America first", availability: true, rating: 5, user: User.first)
unless test1.save
  raise
end
test1 = Politic.new(name: "Poutine", country: "Russia", description: "test", picture: "test", first_stupid: "fake news!", second_stupid: "America first", availability: true, rating: 5, user: User.second)
unless test1.save
  raise
end
test1 = Politic.new(name: "Macron", country: "France", description: "test", picture: "test", first_stupid: "fake news!", second_stupid: "America first", availability: true, rating: 5, user: User.third)
unless test1.save
  raise
end
test1 = Politic.new(name: "Trudeau", country: "Canada", description: "test", picture: "test", first_stupid: "fake news!", second_stupid: "America first", availability: true, rating: 5, user: User.last)
unless test1.save
  raise
end

bookingtest = Booking.new(user: User.first, politic: Politic.all.sample, bribe: 2)

unless bookingtest.save
  raise
end
