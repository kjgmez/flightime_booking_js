class Coach < ApplicationRecord
  belongs_to :location
  has_many :appointments

  def name_and_level
    "#{self.name}, Skill Level: #{self.level}"
  end

end
