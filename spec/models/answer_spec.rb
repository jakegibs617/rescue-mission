require 'rails_helper'

RSpec.describe Answer, type: :model do

  context 'answers' do
  let!(:answer) { FactoryGirl.create(:answer) }

    it "should have a name" do
      expect(answer.name).to eq(answer.name)
    end

    it "should have a body" do
      expect(answer.body).to eq(answer.body)
    end

  end


  it { should belong_to(:question) }
  it { should validate_length_of(:body).is_at_least(50) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:body) }

end
