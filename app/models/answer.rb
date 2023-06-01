class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :beast
  has_one :choice, dependent: :destroy
  validates :answer, :letter, presence: true
end
