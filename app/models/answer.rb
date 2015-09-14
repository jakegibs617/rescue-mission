class Answer < ActiveRecord::Base
  belongs_to :question

  validates :name, presence: true
  validates :body, presence: true

end
