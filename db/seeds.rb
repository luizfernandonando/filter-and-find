require "faker"

puts "Cleaning user DB..."
User.destroy_all
Job.destroy_all
Skill.destroy_all


puts "Creating admin credentials..."
User.create!(
  email: "admin@admin.com",
  password: "123456",
  full_name: "Admin User"
)

puts "Populating app with users..."
5.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    full_name: Faker::Name.name
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

puts "Populating app with skills..."
10.times do
  Skill.create(
    name: Faker::ProgrammingLanguage.name
  )
end

puts "Populating app with skills users..."
10.times do
  Skill.create(
    name: Faker::Job.key_skill
  )
end

puts "Populating job skills..."
5.times do
  Job.all.each do |job|
    skill = Skill.all.sample

    JobSkill.create(
      job_id: job.id,
      skill_id: skill.id
    )
  end
end
