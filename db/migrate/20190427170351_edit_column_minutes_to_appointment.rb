class EditColumnMinutesToAppointment < ActiveRecord::Migration[5.2]
  def change
    change_column :appointments, :minutes, :datetime
  end
end
