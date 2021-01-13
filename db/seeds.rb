# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

puts "Seeding data...."

def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

Image.create!(
  name: 'Toronto, Canada', 
  description: 'Toronto skyline at night featuring the CN Tower', 
  image: open_asset('toronto.jpg'), 
  price_cents: 40.00
)
Image.create!(
  name: 'Paris, France',
  description: 'The iconic Eiffel tower in Paris, France', 
  image: open_asset('paris.jpeg'),
  price_cents: 67.00
)

Image.create!(
  name: 'Waffles',
  description: 'Pumpkin waffles with whipped cream.', 
  image: open_asset('waffles.jpg'),
  price_cents: 18.00
)
Image.create!(
  name: 'Chocolate Chip Cookies',
  description: 'Brown butter chocolate chip cookies with flaked sea salt', 
  image: open_asset('cookie.jpg'),
  price_cents: 23.00
)
Image.create!(
  name: 'Charcuterie board',
  description: 'Charcuterie with fresh baked focaccia 3 ways.', 
  image: open_asset('charcuterie.jpg'),
  price_cents: 50.00
)
Image.create!(
  name: 'Burger',
  description: 'Juicy burger with french fries', 
  image: open_asset('burger.jpg'),
  price_cents: 29.00
)
Image.create!(
  name: 'Bread',
  description: 'Fresh baked sourdough loaf.', 
  image: open_asset('bread1.jpg'),
  price_cents: 31.00
)
Image.create!(
  name: 'Poke',
  description: 'Colourful poke bowl.', 
  image: open_asset('poke.jpg'),
  price_cents: 41.00
)


puts "DONE!"