require 'rails_helper'

RSpec.describe Answer do

  context 'answers' do
  let!(:answer) { FactoryGirl.create(:answer) }

    it "should have a name" do
      expect(answer.name).to eq(answer.name)
    end

    it "should have a body" do
      expect(answer.body).to eq(answer.body)
    end

  end
end
