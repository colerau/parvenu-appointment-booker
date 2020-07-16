class Appointment < ApplicationRecord
    belongs_to :user
    belongs_to :employee

    binding.pry
    

end
