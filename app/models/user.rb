class User < ApplicationRecord
    has_many :appointments
    has_many :employees, through: :appointments

    has_secure_password

    validates :email, presence: true, uniqueness: true 
    validates :password, confirmation: true 

    def self.most_appointments
        # returns name of user with most appointments
        self.joins(:appointments).group('users.id').order('count(appointments.id) desc').limit(1).first.name
    end
end
