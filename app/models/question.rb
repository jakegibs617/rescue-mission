class Question < ActiveRecord::Base
  has_many :answers


  validates :asker_name, presence: true
  validates :body, presence: true
  validates :title, presence: true
end
