require 'rails_helper'

feature 'visitor views questions and answers', %Q{
  As a visitor
  I want to ask a question
  And be able to see it with the other questions on the main page
} do

  let(:question) { FactoryGirl.build(:question) }

  scenario 'ask a question and see it on the root page' do
    visit root_path
    click_link "Ask"
    fill_in "question_asker_name", :with => question.asker_name
    fill_in "question_title", :with => question.title
    fill_in "question_body", :with => question.body
    click_button "Save Question"
    visit root_path
    expect(page).to have_content(question.title)
  end

  scenario 'click on a question and see it in its own page' do
    visit root_path
    click_link "Ask"
    fill_in "question_asker_name", :with => question.asker_name
    fill_in "question_title", :with => question.title
    fill_in "question_body", :with => question.body
    click_button "Save Question"

    expect(page).to have_content(question.body)
  end

end
