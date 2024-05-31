class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :comment, :user_id, :property_id
end
