class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :coaches
  has_many :appointments
  has_many :users, through: :appointments
end
