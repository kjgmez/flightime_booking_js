class User < ApplicationRecord

  validates :level, numericality: {less_than_or_equal_to: 4}

  has_many :appointments
  has_many :locations, through: :appointments

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # def update_balance(time)
  #   self.balance = self.balance - time
  # end

end
