# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first
Product.create!(category: "Toys & Games", name: "Settlers of Catan", price: 29.95, released_at: "2011-07-15")
Product.create!(category: "Toys & Games", name: "Technodrome", price: 27.99, released_at: "2011-07-28")
Product.create!(category: "Furniture", name: "Lawn Chair", price: 34.99, released_at: "2011-08-05")
Product.create!(category: "Electronics", name: "Flux Capacitor", price: 88.00, released_at: "1955-11-05")
Product.create!(category: "Food", name: "Ryan's Cheesecake", price: 49.99, released_at: "2011-08-22")
Product.create!(category: "Toys & Games", name: "Agricola", price: 45.99, released_at: "2011-08-28")
Product.create!(category: "Toys & Games", name: "Stone Age", price: 34.99, released_at: "2011-08-30")
Product.create!(category: "Misc", name: "Answer to Everything", price: 42.00, released_at: "2011-09-08")
Product.create!(category: "Misc", name: "Phil's Painting", price: 399.00, released_at: "2011-09-14")
Product.create!(category: "Electronics", name: "TextMate 2", price: 75.00, released_at: "2011-09-22")
