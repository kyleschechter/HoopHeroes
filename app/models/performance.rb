class Performance < ApplicationRecord
  belongs_to :game 
  belongs_to :player
  validates :points, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :assists, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :rebounds, presence: true, numericality: { greater_than_or_equal_to: 0 }
end