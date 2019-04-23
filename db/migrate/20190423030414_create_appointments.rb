class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :user, foreign_key: true
      t.references :location, foreign_key: true
      t.datetime :arrival_time
      t.integer :minutes

      t.timestamps
    end
  end
end
