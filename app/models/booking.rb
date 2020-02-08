class Booking < ApplicationRecord
  has_many :reviews
  belongs_to :user
  belongs_to :art
  # validates :start_date, presence: true
  # validates :end_date, presence: true
end
