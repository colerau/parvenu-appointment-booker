class Appointment < ApplicationRecord
    belongs_to :user
    belongs_to :employee

    validate :valid_time

    def valid_time
        if time.hour % 2 == 0
            errors.add(:time, "Hour must be an odd number")
        end
        if time.hour < 9 || time.hour > 17
            errors.add(:time, "Hour must be between 9 and 17")
        end
        if time.strftime("%M") != "00"
            errors.add(:time, "Minute of hour must be 00")
        end 
    end
end
