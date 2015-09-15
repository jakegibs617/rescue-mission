require 'rails_helper'

RSpec.describe Answer do

  context 'answers' do
  let!(:answer) { FactoryGirl.create(:answer) }

    it "should have a name" do
      expect(answer.name).to eq("Jonny Bravo")
    end

    it "should have a body" do
      expect(answer.body).to eq("the beach is over therethe beach is over therethe beach is over therethe beach is over therethe beach is over therethe beach is over therethe beach is over therethe beach is over there")
    end

  end
end
