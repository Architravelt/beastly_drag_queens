class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :quiz
  belongs_to :beast
  validates :answer, :letter, presence: true
end
