class Beast < ApplicationRecord
  has_many :answers
  validates :name, :description, :explanation, presence: true
end
