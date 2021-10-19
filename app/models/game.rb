class Game < ApplicationRecord
  belongs_to :home_team, class_name: 'Team'
  belongs_to :away_team, class_name: 'Team'
  has_many :performances
  has_many :players, through: :performances

  def score(team)
    player_performances = performances.filter { |performance| performance.player.team == team }
    player_performances.sum(&:points)
  end

  def winner
    if score(home_team) > score(away_team)
      home_team
    else
      away_team
    end
  end

  def loser
    if score(home_team) < score(away_team)
      home_team
    else
      away_team
    end
  end

  def best_performance
    performances.order(points: :desc).first
  end
end
