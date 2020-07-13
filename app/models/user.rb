class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, uniqueness: true 

    validates :password, confirmation: true 

    has_many :appointments
    has_many :employees, through: :appointments
end
