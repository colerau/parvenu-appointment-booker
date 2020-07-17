class Appointment < ApplicationRecord
    belongs_to :user
    belongs_to :employee

    validate :yeet 

    private 

    def yeet 
        binding.pry 
        byebug
    end
end
