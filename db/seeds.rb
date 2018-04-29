# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


item_list = [
  [ "Bounty Paper Towels", "https://images.samsclubresources.com/is/image/samsclub/0003700079348_A?$img_size_380x380$", "", 5, 20 ],
  [ "Lysol Power Toilet Bowl Cleaner, 10X Cleaning Power", "https://images.samsclubresources.com/is/image/samsclub/0003624181305_A?$img_size_380x380$", "", 5, 7.98 ],
  [ "Clorox Toilet Bowl Cleaner", "https://images.samsclubresources.com/is/image/samsclub/0004460014894_A?$img_size_380x380$", "", 5,8.98 ],
  [ "Quilted Northern Toilet Paper", "https://images.samsclubresources.com/is/image/samsclub/0004200096765_A?$img_size_380x380$", "", 5,19.96 ],
  ["harmin Ultra Soft Toilet Paper","https://images.samsclubresources.com/is/image/samsclub/0003700098148_A?$img_size_380x380$" , "", 5,20.98],
  ["Cottonelle Flushable Wipes","https://images.samsclubresources.com/is/image/samsclub/0003600048562_A?$img_size_380x380$", "", 5,14.83],
  ["Dawn Ultra Total Clean, Apple Orchard","https://images.samsclubresources.com/is/image/samsclub/0003700091860_A?$img_size_380x380$", "", 5,8.78],
  ["Lysol Neutra Air Citrus Scent","https://images.samsclubresources.com/is/image/samsclub/0001920080425_A?$img_size_380x380$", "", 5, 15.24],
  ["Purell Healthy Soap","https://images.samsclubresources.com/is/image/samsclub/0040619585679_A?$img_size_380x380$", "", 5, 20.97],
  ["Scott Bath Tissue","https://images.samsclubresources.com/is/image/samsclub/0005400039907_A?$img_size_380x380$", "", 5, 23.28],
  ["Snack Care Package","https://images.samsclubresources.com/is/image/samsclub/0086368600465_A?$img_size_380x380$",  "", 5,18.48],
  ["Crest Toothpaste","https://images.samsclubresources.com/is/image/samsclub/0003700072277_A?$img_size_380x380$", "", 5, 23.28],
]

item_list.each do |title, imgUrl, url, quantity, price|
  Item.create( title: title, imgUrl: imgUrl, price: price, url: url, quantity: quantity )
end