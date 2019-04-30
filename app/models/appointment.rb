class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :location
  belongs_to :coach

  scope :ordered_by_arrival_time, -> { order(arrival_time: :asc) }
  # scope :ordered_by_level, -> { order(level: :desc) }

end
