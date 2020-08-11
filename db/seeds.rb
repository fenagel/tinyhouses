Tinyhouse.destroy_all
User.destroy_all

user_one = User.create!(email: 'bob@gmail.com', password: '123456', username: 'Bob')
user_two = User.create!(email: 'joe@gmail.com', password: '123456', username: 'Joe')
Tinyhouse.create!(title: 'Mystery', user: user_one, location: 'Boxhagener Straße 74', price_per_day: 25, description: 'a well designed tiny house that looks and feels spacious. It balances warm and light tones well to create a clean yet cozy environment.

Functionally, the floor plan is unique and functional especially given its extra 2 feet of width. At its competitive starting price point, and the ability to ship to anywhere in the world, this is surely a top choice for those looking to go tiny.')

Tinyhouse.create!(title: 'Nova', user: user_two, location: 'Chodowiekistraße 27', price_per_day: 35, description: 'a well designed tiny house that looks and feels spacious. It balances warm and light tones well to create a clean yet cozy environment.

Functionally, the floor plan is unique and functional especially given its extra 2 feet of width. At its competitive starting price point, and the ability to ship to anywhere in the world, this is surely a top choice for those looking to go tiny.')

Tinyhouse.create!(title: 'Indigo', user: user_one, location: 'Sonntagstraße 2', price_per_day: 44, description: 'a well designed tiny house that looks and feels spacious. It balances warm and light tones well to create a clean yet cozy environment.

Functionally, the floor plan is unique and functional especially given its extra 2 feet of width. At its competitive starting price point, and the ability to ship to anywhere in the world, this is surely a top choice for those looking to go tiny.')

Tinyhouse.create!(title: 'Epikur', user: user_two, location: 'Friedrichstraße 51', price_per_day: 61, description: 'a well designed tiny house that looks and feels spacious. It balances warm and light tones well to create a clean yet cozy environment.

Functionally, the floor plan is unique and functional especially given its extra 2 feet of width. At its competitive starting price point, and the ability to ship to anywhere in the world, this is surely a top choice for those looking to go tiny.')

Tinyhouse.create!(title: 'Babylon', user: user_one, location: 'Pankstraße 31', price_per_day: 33, description: 'a well designed tiny house that looks and feels spacious. It balances warm and light tones well to create a clean yet cozy environment.

Functionally, the floor plan is unique and functional especially given its extra 2 feet of width. At its competitive starting price point, and the ability to ship to anywhere in the world, this is surely a top choice for those looking to go tiny.')
