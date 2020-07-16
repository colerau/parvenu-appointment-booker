class Appointment < ApplicationRecord
    belongs_to :user
    belongs_to :employee

    binding.pry 
    validates :time, uniqueness: true, presence: true  

end
