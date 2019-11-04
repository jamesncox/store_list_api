# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 3.times do 
#     Store.create({name: "Kroger"})
# end

# 3.times do 
#     List.create({item: "Monday", price: 3.99, quantity: "100", store_id: 1})
# end 

stores = Store.create([{ name: 'Kroger' }, { name: 'Target' }, { name: 'Lucky' }])
List.create(item: 'Milk', price: 3.99, quantity: 1, store_id: 1, store: stores.first)
List.create(item: 'Quilt', price: 70.00, quantity: 2, store_id: 2, store: stores[1])
List.create(item: 'Bomber Jacket', price: 150.69, quantity: 1, store_id: 3, store: stores[2])