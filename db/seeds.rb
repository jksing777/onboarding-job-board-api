# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

10.times do
  Company.create(
        name: Faker::Company.name,
        address: Faker::Address.full_address
  )
end

100.times do
  Job.create(
        title: Faker::Job.title,
        field: Faker::Job.field,
        seniority: Faker::Job.seniority,
        position: Faker::Job.position,
        key_skill: Faker::Job.key_skill,
        employment_type: Faker::Job.employment_type,
        education_level: Faker::Job.education_level
    )
end
