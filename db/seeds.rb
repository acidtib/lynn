# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creating Users"

User.create(
  email: 'arubinofaux@gmail.com',
  password: 123456789,
  first_name: 'Dainel',
  last_name: 'Vera',
  phone: '7866029447'
)

20.times do
  create_user = User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password(8),
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone: Faker::PhoneNumber.cell_phone
  )
end

puts "Creating Recipients"
80.times do
  @random_user = User.limit(1).order("RANDOM()")

  create_recipient = Recipient.create(
    user_id: @random_user[0].id,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    country: Faker::Address.country
  )
end
