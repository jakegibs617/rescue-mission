class Question < ActiveRecord::Base
  has_many :answers

  validates :asker_name, presence: true
  validates :body, presence: true, length: { minimum: 150 }
  validates :title, presence: true, length: { minimum: 40 }

  default_scope { order('created_at DESC') }
end
