# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "cleaning database ...."
Restaurant.destroy_all

puts "creating restaurants ..."
resto1 = {name:"del arte", address:"12 bd de verdun 02100 saint quentin", phone_number:"0324534253", category:"italian"}
resto2 = {name:"chez Robert", address:"2 impasse du boudin", phone_number:"0342534231", category:"french"}
resto3 = {name:"A la bonne frite", address:"42 boulevard de la patate bruxelles", phone_number:"0328172362", category:"belgian"}
resto4 = {name:"TOKINOKI", address:"4 rue de la savate", phone_number:"0363736353", category:"japanese"}
resto5 = {name:"chez Mario", address:"6 rue du mytho", phone_number:"0356455678", category:"italian"}

[resto1, resto2, resto3, resto4, resto5].each do |attributes|
	restaurant = Restaurant.create(attributes)
	puts "created #{restaurant.name}"
end