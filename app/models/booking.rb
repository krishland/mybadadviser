class Booking < ApplicationRecord
  belongs_to :politic # 1/ Creates a validation condition 2/ Creates a method to get to the politic of the booking with booking.politic
  belongs_to :user # 1/ Creates a validation condition 2/ Creates a method to get to the politic of the booking with booking.user
  validates :bribe, presence: true
  validates :status, inclusion: {in: ["pending", "accepted", "refused"] }
end
