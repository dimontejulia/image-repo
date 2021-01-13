# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

puts "Seeding data...."

def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

Image.create!(
  name: 'Pie', 
  description: 'Strawberry rhubarb pie with homemade crust.', 
  image: open_asset('pie.jpg'), 
  price_cents: 55.00,
  keywords: 'baking, pie, crust, strawberry'
)
Image.create!(
  name: 'Focaccia', 
  description: 'Traditional Italian focaccia.', 
  image: open_asset('focaccia.jpg'), 
  price_cents: 30.00,
  keywords: 'bread, Italian, focaccia, square'
)
Image.create!(
  name: 'Muffins',
  description: 'Pumpkin muffins. Perfect for fall.', 
  image: open_asset('muffin.jpg'),
  price_cents: 11.00,
  keywords: 'baking, muffin, pumpkin, chocolate, fall'
)
Image.create!(
  name: 'Pizza',
  description: 'Homemade pizza dough cooked in a stone oven topped with spicy salami.', 
  image: open_asset('pizza.jpg'),
  price_cents: 23.00,
  keywords: 'Italian, pizza, cheese, sauce, bread, salami, olives'
)
Image.create!(
  name: 'Waffles',
  description: 'Pumpkin waffles with whipped cream.', 
  image: open_asset('waffles.jpg'),
  price_cents: 18.00,
  keywords: 'baking, waffles, whipped cream, triangle'
)
Image.create!(
  name: 'Burger',
  description: 'Juicy burger with french fries', 
  image: open_asset('burger.jpg'),
  price_cents: 29.00,
  keywords: 'burger, french fries, bacon, lettuce, tomato, bread'
)
Image.create!(
  name: 'Chocolate Chip Cookies',
  description: 'Brown butter chocolate chip cookies with flaked sea salt', 
  image: open_asset('cookie.jpg'),
  price_cents: 23.00,
  keywords: 'baking, cookie, salt, chocolate'
)
Image.create!(
  name: 'Charcuterie board',
  description: 'Charcuterie with fresh baked focaccia 3 ways.', 
  image: open_asset('charcuterie.jpg'),
  price_cents: 50.00,
  keywords: 'bread, meat, cheese, cracker'
)
Image.create!(
  name: 'Bread',
  description: 'Fresh baked sourdough loaf.', 
  image: open_asset('bread1.jpg'),
  price_cents: 31.00,
  keywords: 'bread, sourdough, breakfast'
)


puts "DONE!"