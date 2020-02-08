class Review < ApplicationRecord
  belongs_to :booking
  # validates :title, presence: true
  # validates :description, presence: true
  # validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
end
