class BookingSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :total_price, :user_id, :property_id
end
