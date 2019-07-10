class AppointmentSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :location
  belongs_to :coach

  attributes :id, :arrival_time, :minutes
end
