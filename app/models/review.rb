class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, inclusion: { :in => 0..5, message: "%{value} is not a note between (0..5)"}
  validates :rating, numericality: { only_integer: true }
end
