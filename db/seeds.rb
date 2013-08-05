categories = ['bikes', 'cars', 'casual encounters', 'books', 'jobs', 'apartments', 'rideshare', 'pets', 'barter', 'haiku']

categories.each do |category|
  Category.create(title: category, description: Faker::Lorem.sentence(6))
end

50.times do
  Post.create(title: Faker::Company.catch_phrase, text: Faker::Lorem.paragraph, email: Faker::Internet.email, price: rand(0..100), key: (0...8).map{(65+rand(26)).chr}.join ,category_id: rand(1..10))
end
