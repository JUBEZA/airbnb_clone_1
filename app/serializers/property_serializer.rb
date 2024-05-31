class PropertySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :price, :location, :user_id
  has_many :bookings
  has_many :reviews
end
