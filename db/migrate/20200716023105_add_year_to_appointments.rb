class AddYearToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :year, :integer
  end
end
