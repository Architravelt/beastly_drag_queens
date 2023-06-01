class Question < ApplicationRecord
  belongs_to :quiz
  has_many :answers, dependent: :destroy
  has_one :choice, dependent: :destroy
  validates :question, :name, presence: true
end
