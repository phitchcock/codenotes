# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

25.times do 
  Note.create(
    title: Faker::Company.name,
    description: Faker::Lorem.paragraph,
    code_sample: Faker::Lorem.paragraph
    )
end

30.times do 
  GemComment.create(
    name: Faker::Company.name,
    description: Faker::Lorem.paragraph,
    code_sample: Faker::Lorem.paragraph
    )
end

35.times do 
  Project.create(
    name: Faker::Company.name,
    description: Faker::Lorem.paragraph,
    code_sample: Faker::Lorem.paragraph
    )
end

puts "Seed finished"
puts "#{Note.count} posts created"
puts "#{GemComment.count} comments created"
puts "#{Project.count} comments created"
