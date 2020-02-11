class Art < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  # validates :title, presence: true
  # validates :artist, presence: true
  # validates :price, presence: true
  # validates :dimensions, presence: true
  # validates :city, presence: true
  has_one_attached :photo
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?

  after_save :load_algolia

  include AlgoliaSearch
  algoliasearch do
    attributes :city, :title, :artist, :price
  end

  private

  def load_algolia
    index = Algolia::Index.new('Rentart')
    index.add_object(self)
  end
end

