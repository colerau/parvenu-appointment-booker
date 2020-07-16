class AddMonthToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :month, :integer
  end
end
