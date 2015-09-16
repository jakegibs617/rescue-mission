require 'rails_helper'

feature 'visitor views questions and answers', %Q{
  As a visitor
  I want to view a list of questions
  So that I can see the related answers or answer a question
  that interests me
} do

  # let(:question) { FactoryGirl.create(:question) }

  scenario 'list of questions on the root page' do
    question = FactoryGirl.build(:question, title: "How do I do this factory girl stuff and make it work in my tests? Does this work?")

    visit root_path
    click_link "Ask"
    fill_in "asker_name", :with => quesiton.title
    click_button "Submit"

    expect(page).to have_content(question.title)
  end


end
