class Performance < ApplicationRecord
  belongs_to :game 
  belongs_to :player
  validates :points, presence: true
  validates :assists, presence: true
  validates :rebounds, presence: true
end