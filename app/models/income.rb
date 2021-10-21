class Income < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :amount, presence: true
  validates :amount, numericality: { only_integer: true }
end
