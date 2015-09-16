require 'rails_helper'

RSpec.describe Question do

  context 'questions' do
  let!(:question) { FactoryGirl.create(:question) }

    it "should have a name" do
      expect(question.asker_name).to eq(question.asker_name)
    end

    it "should have a title" do
      expect(question.title).to eq(question.title)
    end

    it "should have a description" do
      expect(question.body).to eq(question.body)
    end
  end
end
