require 'faker'# This file should contain all the record creation needed to seed the database with its default values.

if Rails.env.development?

	10.times do
		Question.create(
		 asker_name: Faker::Internet.user_name,
		 body: Faker::Hacker.say_something_smart,
		 title: Faker::Hacker.say_something_smart + "?"
		 )
	end
	80.times do
		Answer.create(
		 name: Faker::Internet.user_name,
		 body: Faker::Hacker.say_something_smart,

		 question_id: Faker::Number.between(1, 5)
		 )
	end

end
