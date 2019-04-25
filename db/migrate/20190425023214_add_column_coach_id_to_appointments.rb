class AddColumnCoachIdToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_reference :appointments, :coach, foreign_key: true
  end
end
