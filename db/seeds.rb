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

puts "Populating app with companies..."
10.times do
  Company.create!(
    name: Faker::Company.name,
    sector: Faker::Company.department,
    description: Faker::Company.brazilian_company_number
  )
end

puts "Populating app with jobs..."
10.times do
  Job.create!(
    position: Faker::Job.title,
    description: Faker::Job.position,
    requirements: Faker::ProgrammingLanguage.name,
    contact_company: Faker::Company.brazilian_company_number,
    company: Company.all.sample
  )
end

puts puts "Populating app with skills..."
10.times do
  Skill.create!(
    name: Faker::ProgrammingLanguage.name
  )
end
