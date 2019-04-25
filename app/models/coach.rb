class Coach < ApplicationRecord
  belongs_to :location
  has_many :appointments
end
