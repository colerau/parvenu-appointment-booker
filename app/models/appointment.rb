class Appointment < ApplicationRecord
    belongs_to :user
    belongs_to :employee

    validates :time, uniqueness: true, presence: true  

end
