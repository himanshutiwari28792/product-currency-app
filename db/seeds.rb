# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["Adam", "bill", "tom", "cook"].each do |name|
  User.create(name: name, email: "#{name}@gmail.com", number: "1234567890")
end

Product.create(name: 'One plus six', description: 'mobile', price: 39999)
Product.create(name: 'One plus seven', description: 'mobile', price: 49999)
Product.create(name: 'Iphone X', description: 'mobile', price: 99999)