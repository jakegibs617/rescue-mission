require 'faker'# This file should contain all the record creation needed to seed the database with its default values.

if Rails.env.development?

	10.times do
		Question.create(
		 asker_name: Faker::Name.name,
		 body: Faker::Lorem.paragraph,
		 title: Faker::Hacker.say_something_smart + "?"
		 )
	end
	140.times do
		Answer.create(
		 name: Faker::Name.name,
		 body: Faker::Hacker.say_something_smart,

		 question_id: Faker::Number.between(1, 50)
		 )
	end

end
