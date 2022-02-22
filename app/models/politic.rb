class Politic < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true, uniqueness: true
  validates :country, presence: true
  validates :description, presence: true
  validates :picture, presence: true
  validates :first_stupid, presence: true
  validates :second_stupid, presence: true
  validates :availability, presence: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal: 5 }
end
