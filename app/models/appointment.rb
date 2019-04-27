class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :location
  belongs_to :coach

end
