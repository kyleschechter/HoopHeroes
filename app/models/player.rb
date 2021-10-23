class Player < ApplicationRecord
  belongs_to :team
  has_many :performances
  has_many :games, through: :performances
  validates :name, presence: true, uniqueness: true

  def per_game_stats(stat)
    (performances.sum(&stat).to_f / performances.count).round(2)
  end
end
