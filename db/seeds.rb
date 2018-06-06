# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create(name: "Planet Globula terrarium", description: "Handmade terrarium", image_url: "terrarium.JPG" )
Product.create(name: "Planet Globula notepad", description: "Handmade notepad with stone paper and himalayan paper cover. Various sizes", image_url: "notepad.JPG" )
Product.create(name: "Planet Globula terrarium kit", description: "Handmade terrarium kit with instructions", image_url: "kit.jpg" )
Product.create(name: "Acrylic painting", description: "Acrylic painting on Hahnemühle paper 50x65cm", image_url: "pgpainting.JPG" )
Product.create(name: "Planet Globula notepad", description: "Handmade notepad with papyrus paper cover.", image_url: "papirus.JPG" )
Product.create(name: "Acrylic painting", description: "Acrylic painting on Hahnemühle paper 50x65cm", image_url: "framed2.JPG" )
Order.create(user_id: 1, product_id: 87, total: 10.0)
Order.create(user_id: 1, product_id: 88, total: 5.0)
