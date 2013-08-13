# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Banque.delete_all
Account.delete_all
Bank.delete_all

b1 = Bank.create(name: "Bank of GA")
a1 = Account.create(name: "Account 1", balance: "7500.00")
a2 = Account.create(name: "Account 2", balance: "2500.00")

b1.accounts << a1
b1.accounts << a2

puts "all done"