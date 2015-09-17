require 'factory_girl'

FactoryGirl.define do

  factory :answer do
    name Faker::Name.name
    body Faker::Lorem.paragraph(5, true, 9)
    question_id Faker::Number.between(1, 99)
  end

  factory :question do
    asker_name Faker::Name.name
    sequence :title do |n|
      Faker::Lorem.paragraph(5, true, 9) + "#{n}"
    end
    body Faker::Lorem.paragraph(5, true, 9)
  end

end
