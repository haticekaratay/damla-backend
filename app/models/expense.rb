class Expense < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :amount, presence: true
  scope :order_by_name, ->{self.order(name: :asc)}
end
