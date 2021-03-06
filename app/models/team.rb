class Team < ApplicationRecord
  belongs_to :user
  has_many :games
  has_many :players
  has_many :performances, through: :players
  accepts_nested_attributes_for :players
  validates :name, presence: true, uniqueness: true
  validates :slogan, presence: true
  validates :image_url, presence: true
  scope :except_team_of, ->(user) { where.not(id: user.team.id )}
  ##Try more scope methods ^^^

  def wins
    Game.all.filter { |game| game.winner == self}.count
  end

  def losses
    Game.all.filter { |game| game.loser == self}.count
  end

  def record
    "( #{wins} - #{losses} )"
  end
end
