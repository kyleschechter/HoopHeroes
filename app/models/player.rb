class Player < ApplicationRecord
  belongs_to :team
  has_many :performances
  has_many :games, through: :performances
end
