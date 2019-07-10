class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :balance, :level
  has_many :appointments
  has_many :locations, through: :appointments
end
