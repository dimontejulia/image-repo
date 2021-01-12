# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

puts "Seeding data...."

def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

Image.create(
  name: 'Toronto, Canada', 
  description: 'Toronto skyline at night featuring the CN Tower', 
  img_url: open_asset('paris.jpeg')
)
Image.create(
  name: 'Paris, France', 
  description: 'The iconic Eiffel tower in Paris, France', 
  img_url: open_asset('paris.jpeg')
)