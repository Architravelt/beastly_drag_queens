class Beast < ApplicationRecord
  has_many :answers, dependent: :destroy
  validates :name, :description, :explanation, :animal, presence: true
end
