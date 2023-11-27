require "faker"

5.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
  )
end

10.times do
  Firm.create!(
    name: Faker::Company.name,
    sector: Faker::Company.department,
    description: Faker::Company.brazilian_company_number
  )
end
