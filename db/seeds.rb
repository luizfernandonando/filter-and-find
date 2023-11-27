require "faker"

5.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
  )
end
