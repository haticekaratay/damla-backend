class User < ApplicationRecord
    has_secure_password
    has_many :incomes, dependent: :destroy
    has_many :expenses, dependent: :destroy
    validates :username, :email, presence: true, uniqueness: true
end
