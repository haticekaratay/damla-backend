class Expense < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :amount, presence: true
  validates :amount, numericality: { less_than_or_equal_to: :budget,  only_integer: true }
end
