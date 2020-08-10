Tinyhouse.destroy_all
User.destroy_all

user = User.create!(email: 'bob@gmail.com', password: '123456', username: 'Bob')
tinyhouse = Tinyhouse.create!(title: 'Little Shit Hut', location: 'Boxhagener Straße 74', price_per_day: 25, description: 'laridaridadaididiadia idaidaidi aidaidiaidai diai apqweopkl')
tinyhouse.user = user