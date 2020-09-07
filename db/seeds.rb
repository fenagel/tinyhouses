require 'open-uri'
Tinyhouse.destroy_all
User.destroy_all

user_one = User.create!(email: 'bob@gmail.com', password: '123456', username: 'Bob')
user_two = User.create!(email: 'joe@gmail.com', password: '123456', username: 'Joe')
puts "Two Users created"

tinyhouse_one = Tinyhouse.create!(
  title: 'Mystery',
  user: user_one,
  location: 'Boxhagener Straße 74, Berlin, Germany',
  price_per_day: 25,
  description: 'a well designed tiny house that looks and feels spacious. It balances warm and light tones well to create a clean yet cozy environment. Functionally, the floor plan is unique and functional especially given its extra 2 feet of width. At its competitive starting price point, and the ability to ship to anywhere in the world, this is surely a top choice for those looking to go tiny.')

tinyhouse_two = Tinyhouse.create!(
  title: 'Nova',
  user: user_two,
  location: 'Sonntagstraße 24, Berlin, Germany',
  price_per_day: 35,
  description: 'a well designed tiny house that looks and feels spacious. It balances warm and light tones well to create a clean yet cozy environment. Functionally, the floor plan is unique and functional especially given its extra 2 feet of width. At its competitive starting price point, and the ability to ship to anywhere in the world, this is surely a top choice for those looking to go tiny.')

tinyhouse_three = Tinyhouse.create!(
  title: 'Indigo',
  user: user_one,
  location: 'Sonntagstraße 2, Berlin, Germany',
  price_per_day: 44,
  description: 'a well designed tiny house that looks and feels spacious. It balances warm and light tones well to create a clean yet cozy environment. Functionally, the floor plan is unique and functional especially given its extra 2 feet of width. At its competitive starting price point, and the ability to ship to anywhere in the world, this is surely a top choice for those looking to go tiny.')

tinyhouse_four = Tinyhouse.create!(
  title: 'Epikur',
  user: user_two,
  location: 'Tankefuldvej 48, Svendborg, Denmark',
  price_per_day: 61,
  description: 'a well designed tiny house that looks and feels spacious. It balances warm and light tones well to create a clean yet cozy environment. Functionally, the floor plan is unique and functional especially given its extra 2 feet of width. At its competitive starting price point, and the ability to ship to anywhere in the world, this is surely a top choice for those looking to go tiny.')

tinyhouse_five = Tinyhouse.create!(
  title: 'Babylon',
  user: user_one,
  location: 'Pankstraße 31, Berlin, Germany',
  price_per_day: 33,
  description: 'a well designed tiny house that looks and feels spacious. It balances warm and light tones well to create a clean yet cozy environment. Functionally, the floor plan is unique and functional especially given its extra 2 feet of width. At its competitive starting price point, and the ability to ship to anywhere in the world, this is surely a top choice for those looking to go tiny.')
puts "Five Tinyhouses created"

tinyhouse_one_img_one = URI.open('https://mir-s3-cdn-cf.behance.net/project_modules/fs/2f03ff79679537.5d53ca226ecd8.jpg')
tinyhouse_one_img_two = URI.open('https://mir-s3-cdn-cf.behance.net/project_modules/fs/95020c79679537.5ccac1592b09f.png')
tinyhouse_one_img_three = URI.open('https://mir-s3-cdn-cf.behance.net/project_modules/fs/e339cd79679537.5ccac1592a9a4.png')
tinyhouse_one_img_four = URI.open('https://mir-s3-cdn-cf.behance.net/project_modules/fs/944aab79679537.5ccac1592b786.jpg')
tinyhouse_one_img_five = URI.open('https://mir-s3-cdn-cf.behance.net/project_modules/fs/a8bdad79679537.5ccac1592ad1b.jpg')
# tinyhouse_one_img_six = URI.open('https://mir-s3-cdn-cf.behance.net/project_modules/fs/51f4e679679537.5ccac1592bac5.jpg')

tinyhouse_one.photos.attach(io: tinyhouse_one_img_one, filename: 'house0101.jpgs', content_type: 'image/jpg')
tinyhouse_one.photos.attach(io: tinyhouse_one_img_two, filename: 'house0102.jpgs', content_type: 'image/jpg')
tinyhouse_one.photos.attach(io: tinyhouse_one_img_three, filename: 'house0103.jpgs', content_type: 'image/jpg')
tinyhouse_one.photos.attach(io: tinyhouse_one_img_four, filename: 'house0104.jpgs', content_type: 'image/jpg')
tinyhouse_one.photos.attach(io: tinyhouse_one_img_five, filename: 'house0105.jpgs', content_type: 'image/jpg')
# tinyhouse_one.photos.attach(io: tinyhouse_one_img_six, filename: 'house0106.jpgs', content_type: 'image/jpg')
tinyhouse_one.save!

tinyhouse_two_img_one = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278c1488fe0408bb8ca69_MC2A9460.jpeg')
tinyhouse_two_img_two = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278c1488fe0c348b8ca67_MC2A9536.jpeg')
tinyhouse_two_img_three = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278c2488fe0fed8b8ca70_MC2A0195-p-500.jpeg')
tinyhouse_two_img_four = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278c2488fe045f6b8ca6b_MC2A0228-p-500.jpeg')
tinyhouse_two_img_five = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278c1488fe08967b8ca68_MC2A0235-p-500.jpeg')
# tinyhouse_two_img_six = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278c1488fe09116b8ca66_MC2A0639-p-500.jpeg')

tinyhouse_two.photos.attach(io: tinyhouse_two_img_one, filename: 'house0201.jpgs', content_type: 'image/jpg')
tinyhouse_two.photos.attach(io: tinyhouse_two_img_two, filename: 'house0202.jpgs', content_type: 'image/jpg')
tinyhouse_two.photos.attach(io: tinyhouse_two_img_three, filename: 'house0203.jpgs', content_type: 'image/jpg')
tinyhouse_two.photos.attach(io: tinyhouse_two_img_four, filename: 'house0204.jpgs', content_type: 'image/jpg')
tinyhouse_two.photos.attach(io: tinyhouse_two_img_five, filename: 'house0205.jpgs', content_type: 'image/jpg')
# tinyhouse_two.photos.attach(io: tinyhouse_two_img_six, filename: 'house0206.jpgs', content_type: 'image/jpg')
tinyhouse_two.save!

tinyhouse_three_img_one = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278bd7c7d6d0c655df46a_krafty_photos_kamphaus-13-500x330.jpeg')
tinyhouse_three_img_two = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278bf7c7d6d748b5df5db_krafty_photos_kamphaus-8-p-500.jpeg')
tinyhouse_three_img_three = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278bf7c7d6d4d515df5d9_krafty_photos_kamphaus-11-p-500.jpeg')
tinyhouse_three_img_four = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278bf7c7d6dbc415df5d8_krafty_photos_kamphaus-9-p-500.jpeg')
tinyhouse_three_img_five = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278bf7c7d6d344f5df5ea_krafty_photos_kamphaus-2-p-500.jpeg')
# tinyhouse_three_img_six = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278bf7c7d6d37e55df5e9_krafty_photos_kamphaus-7-p-500.jpeg')

tinyhouse_three.photos.attach(io: tinyhouse_three_img_one, filename: 'house0301.jpgs', content_type: 'image/jpg')
tinyhouse_three.photos.attach(io: tinyhouse_three_img_two, filename: 'house0302.jpgs', content_type: 'image/jpg')
tinyhouse_three.photos.attach(io: tinyhouse_three_img_three, filename: 'house0303.jpgs', content_type: 'image/jpg')
tinyhouse_three.photos.attach(io: tinyhouse_three_img_four, filename: 'house0304.jpgs', content_type: 'image/jpg')
tinyhouse_three.photos.attach(io: tinyhouse_three_img_five, filename: 'house0305.jpgs', content_type: 'image/jpg')
# tinyhouse_three.photos.attach(io: tinyhouse_three_img_six, filename: 'house0306.jpgs', content_type: 'image/jpg')
tinyhouse_three.save!

tinyhouse_four_img_one = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278b160c40c06837c5d98_noyer-3d-website-1280x850.jpeg')
tinyhouse_four_img_two = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278b160c40cf8d67c5da1_noyer-3-1656x1100-p-500.jpeg')
tinyhouse_four_img_three = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278b160c40c87d37c5d9c_noyer-11-1656x1100-p-500.jpeg')
tinyhouse_four_img_four = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278b160c40c56087c5d99_noyer-1656x1100-p-1080.jpeg')
tinyhouse_four_img_five = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278b160c40c68b17c5da0_noyerii-7-sur-14.jpeg')
# tinyhouse_four_img_six = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278b160c40c01267c5d9e_noyer-14-731x1100.jpeg')

tinyhouse_four.photos.attach(io: tinyhouse_four_img_one, filename: 'house0401.jpgs', content_type: 'image/jpg')
tinyhouse_four.photos.attach(io: tinyhouse_four_img_two, filename: 'house0402.jpgs', content_type: 'image/jpg')
tinyhouse_four.photos.attach(io: tinyhouse_four_img_three, filename: 'house0403.jpgs', content_type: 'image/jpg')
tinyhouse_four.photos.attach(io: tinyhouse_four_img_four, filename: 'house0404.jpgs', content_type: 'image/jpg')
tinyhouse_four.photos.attach(io: tinyhouse_four_img_five, filename: 'house0405.jpgs', content_type: 'image/jpg')
# tinyhouse_four.photos.attach(io: tinyhouse_four_img_six, filename: 'house0406.jpgs', content_type: 'image/jpg')
tinyhouse_four.save!

tinyhouse_five_img_one = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278c38cde112248527a36_MC2A2593.jpeg')
tinyhouse_five_img_two = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278c38cde111c02527a33_MC2A2135.jpeg')
tinyhouse_five_img_three = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278c38cde116d8d527a34_MC2A2194-p-500.jpeg')
tinyhouse_five_img_four = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278c38cde110b98527a38_MC2A2221-p-1080.jpeg')
tinyhouse_five_img_five = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278c38cde1107a8527a3a_MC2A2179.jpeg')
# tinyhouse_five_img_six = URI.open('https://uploads-ssl.webflow.com/5cd1e68968db65ba07de7bfb/5ef278c38cde11f0cc527a3d_MC2A1761.jpeg')

tinyhouse_five.photos.attach(io: tinyhouse_five_img_one, filename: 'house0501.jpgs', content_type: 'image/jpg')
tinyhouse_five.photos.attach(io: tinyhouse_five_img_two, filename: 'house0502.jpgs', content_type: 'image/jpg')
tinyhouse_five.photos.attach(io: tinyhouse_five_img_three, filename: 'house0503.jpgs', content_type: 'image/jpg')
tinyhouse_five.photos.attach(io: tinyhouse_five_img_four, filename: 'house0504.jpgs', content_type: 'image/jpg')
tinyhouse_five.photos.attach(io: tinyhouse_five_img_five, filename: 'house0505.jpgs', content_type: 'image/jpg')
# tinyhouse_five.photos.attach(io: tinyhouse_five_img_six, filename: 'house0506.jpgs', content_type: 'image/jpg')
tinyhouse_five.save!

puts "Images for Tinyhouses created"
