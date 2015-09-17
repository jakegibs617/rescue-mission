require 'rails_helper'

RSpec.describe Question, type: :model do
  describe Question do
  # context 'questions' do
  # let!(:question) { FactoryGirl.create(:question) }

    # it "should have a name" do
    #   expect(question.asker_name).to eq(question.asker_name)
    # end
    #
    # it "should have a title" do
    #   expect(question.title).to eq(question.title)
    # end
    #
    # it "should have a description" do
    #   expect(question.body).to eq(question.body)
    # end
  # end


    it { should have_many(:answers) }
    it { should validate_length_of(:title).is_at_least(40) }
    it { should validate_length_of(:description).is_at_least(140) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
  end

end
