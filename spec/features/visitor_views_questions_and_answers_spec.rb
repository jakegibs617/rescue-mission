require 'rails_helper'

feature 'visitor views questions and answers', %Q{
  As a visitor
  I want to view a list of questions
  So that I can see the related answers or answer a question
  that interests me
} do

  let(:question) { FactoryGirl.build(:question) }

  scenario 'list of questions on the root page' do

    visit root_path
    click_link "Ask"

    fill_in "question_asker_name", :with => question.asker_name
    fill_in "question_title", :with => question.title
    fill_in "question_body", :with => question.body
    click_button "Save Question"

    expect(page).to have_content(question.title)
  end


end
