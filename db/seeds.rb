require "faker"

puts "Cleaning user DB..."
User.destroy_all
Job.destroy_all
Skill.destroy_all
Company.destroy_all

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

Skill.create(name: 'HTML / CSS')
Skill.create(name: 'JavaScript')
Skill.create(name: 'Responsive Design')
Skill.create(name: 'Git and Version Control')
Skill.create(name: 'Teamwork')
Skill.create(name: 'React')
Skill.create(name: 'MySQL')
Skill.create(name: 'Node.js')
Skill.create(name: 'Ajax')
Skill.create(name: 'DOM Manipulation')
Skill.create(name: 'Testing debugging')
Skill.create(name: 'Figma')
Skill.create(name: 'Ruby on Rails')
Skill.create(name: 'Python')
Skill.create(name: 'Backup')
Skill.create(name: 'Database')
Skill.create(name: 'APIs')
Skill.create(name: 'Business Logic')
Skill.create(name: 'C++')
Skill.create(name: 'PHP')

Company.create!(
    name: 'Google',
    description: 'Technology company known for its search engine and online services.',
    sector: 'Technology'
  )

  Company.create!(
    name: 'Apple',
    description: 'Multinational technology company, manufacturer of iPhone, iPad, Mac, among others.',
    sector: 'Technology'
  )

  Company.create!(
    name: 'Microsoft',
    description: 'Technology company that develops software, operating systems, and services.',
    sector: 'Technology'
  )

  Company.create!(
    name: 'Tesla',
    description: 'Manufacturer of electric vehicles and renewable energy solutions.',
    sector: 'Automotive'
  )

  Company.create!(
    name: 'Amazon',
    description: 'E-commerce company, cloud computing services, and streaming.',
    sector: 'Technology'
  )

  Company.create!(
    name: 'Facebook',
    description: 'Leading social network in global connectivity.',
    sector: 'Technology'
  )

  Company.create!(
    name: 'Space X',
    description: 'Aerospace technology company and space exploration.',
    sector: 'Aerospace'
  )

  Company.create!(
    name: 'Airbnb',
    description: 'Online platform for booking and hosting accommodations.',
    sector: 'Technology'
  )

  Company.create!(
    name: 'Le Wagon',
    description: 'Programming and web development bootcamp.',
    sector: 'Education/Technology'
  )

  Company.create!(
    name: 'Adobe',
    description: 'Software company known for products like Photoshop and Acrobat.',
    sector: 'Technology'
  )

  Company.create!(
    name: 'Oracle',
    description: 'Technology company specialized in databases and enterprise systems.',
    sector: 'Technology'
  )

  Company.create!(
    name: 'Samsung',
    description: 'Multinational technology company that manufactures a variety of electronic devices.',
    sector: 'Technology'
  )

  Company.create!(
    name: 'Paypal',
    description: 'Online payment platform.',
    sector: 'Technology/Financial'
  )

  Company.create!(
    name: 'Intel',
    description: 'Technology company specialized in semiconductors and processors.',
    sector: 'Technology'
  )

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
