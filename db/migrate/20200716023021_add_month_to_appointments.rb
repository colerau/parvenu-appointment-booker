class AddMonthToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :year_and_month, :integer
  end
end
