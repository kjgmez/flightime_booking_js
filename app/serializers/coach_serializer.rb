class CoachSerializer < ActiveModel::Serializer
  attributes :id, :name, :level
  belongs_to :location
  has_many :appointments
end
