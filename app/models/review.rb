class Review < ApplicationRecord
  belongs_to :user
  belongs_to :property


  validates :rating, :comment, presence: true
end
