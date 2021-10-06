class User < ApplicationRecord
    has_secure_password
    has_many :incomes
    has_many :expenses
    validates :username, :email, :presence: true, uniqueness: true
end
