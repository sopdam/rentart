class Art < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_one_attached :picture
  validates :title, presence: true
  validates :artist, presence: true
  validates :price, presence: true
  validates :dimensions, presence: true
  validates :city, presence: true
  has_one_attached :photo
end
