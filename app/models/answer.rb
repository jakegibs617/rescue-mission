class Answer < ActiveRecord::Base
  belongs_to :question

  validates :name, presence: true
  validates :body, presence: true, length: { minimum: 50 }

  default_scope { order('created_at DESC') }
end
