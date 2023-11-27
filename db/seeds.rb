require "faker"

puts "Cleaning user DB..."
User.destroy_all

puts "Creating admin credentials..."
User.create!(
  email: "admin@admin.com",
  password: "123456"
)

puts "Populating app with users..."
5.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
  )
end

puts "Populating app with firms..."
10.times do
  Firm.create!(
    name: Faker::Company.name,
    sector: Faker::Company.department,
    description: Faker::Company.brazilian_company_number
  )
end
