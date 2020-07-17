class AppointmentValidator < ActiveModel::Validator
    def validate(record)
        puts "fuck you"
        binding.pry
        byebug
    end
end