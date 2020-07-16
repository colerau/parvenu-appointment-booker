class AddMinuteToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :minute, :integer
  end
end
