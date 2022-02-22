class Booking < ApplicationRecord
  belongs_to :politic
  belongs_to :user

  validates :bribe, presence: true
end
