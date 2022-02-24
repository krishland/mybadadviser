class Politic < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :bookings

  validates :name, presence: true, uniqueness: true
  validates :country, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :picture, presence: true
  validates :first_stupid, presence: true
  validates :second_stupid, presence: true
  validates :availability, presence: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal: 5 }, allow_blank: true
end
