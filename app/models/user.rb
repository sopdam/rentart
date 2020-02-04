class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :arts
  has_many :arts, through: :bookings
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true
end
