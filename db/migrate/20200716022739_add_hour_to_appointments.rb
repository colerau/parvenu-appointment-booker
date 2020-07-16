class AddHourToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :hour, :integer
  end
end
