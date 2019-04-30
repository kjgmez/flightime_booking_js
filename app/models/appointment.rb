class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :location
  belongs_to :coach

  validates :user_id, :location_id, :arrival_time, presence: true
  validates :minutes, numericality: {greater_than: 0}

  scope :ordered_by_arrival_time, -> { order(arrival_time: :asc) }
  # scope :ordered_by_level, -> { order(level: :desc) }

end
