class Property < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews

  validates :title, :description, :price, :location, presence: true
end
