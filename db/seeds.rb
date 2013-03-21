# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Customer.create!(email: 'test@test.com', first_name: 'test', last_name: 'test', address_one: '123 Test Blvd', city: 'test', state_province: 'test', country: 'Afghanistan', postal_code: '10111', phone_number: '+1 111-111-1111', password: 'testtest')
