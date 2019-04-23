class Location < ApplicationRecord
  has_many :coaches
  has_many :appointments
  has_many :users, through: :appointments
end
