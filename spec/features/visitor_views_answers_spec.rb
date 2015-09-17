require 'rails_helper'

feature 'visitor views answers', %Q{
  As a visitor
  I want to see all the answers for a given question
  So I can learn how to fix a problem the question was about
} do

  let(:question) { FactoryGirl.build(:question) }
  let(:answer) { FactoryGirl.build(:answer) }

  scenario 'answer a question and see it on the question\'s page' do
    visit root_path
    click_link "Ask"
    fill_in "question_asker_name", :with => question.asker_name
    fill_in "question_title", :with => question.title
    fill_in "question_body", :with => question.body
    click_button "Save Question"
    visit root_path
    expect(page).to have_content(question.title)

    click_link question.title
    fill_in "answer_name", :with => answer.name
    fill_in "answer_body", :with => answer.body
    click_button "Create Answer"
    expect(page).to have_content(question.asker_name)
    expect(page).to have_content(question.title)
    expect(page).to have_content(question.body)
    expect(page).to have_content(answer.body)
    expect(page).to have_content(answer.name)
  end

  scenario 'answer a question via the answer link and see it on the question\'s page' do
    visit root_path
    click_link "Ask"
    fill_in "question_asker_name", :with => question.asker_name
    fill_in "question_title", :with => question.title
    fill_in "question_body", :with => question.body
    click_button "Save Question"
    visit root_path
    expect(page).to have_content(question.title)

    click_link question.title
    click_link "Add a Answer"
    fill_in "answer_name", :with => answer.name
    fill_in "answer_body", :with => answer.body
    click_button "Create Answer"
    expect(page).to have_content(question.asker_name)
    expect(page).to have_content(question.title)
    expect(page).to have_content(question.body)
    expect(page).to have_content(answer.body)
    expect(page).to have_content(answer.name)
  end

end
