puts "Seeds: start"
User.create!(email: 'admin@admin.com',password: 'adminadmin')

5.times do
  Developer.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

developers = Developer.all

15.times do
  Project.create!(
    name: Faker::Lorem.sentence(2),
    description: Faker::Lorem.paragraph,
    developer: developers.sample 
  )
end

3.times do
  Language.create!(
    name: Faker::Lorem.sentence(2)
  )
end

Language.all.each do |language|
  language.projects << projects.sample(rand(1..4))
end


puts "Seeds: done"
