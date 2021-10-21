class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
    @player1 = @game.performances.build
    @player2 = @game.performances.build
    @player3 = @game.performances.build
    @player4 = @game.performances.build
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def game_params
    params.require(:game).permit(:home_team_id, :away_team_id, performances_attributes: [:game_id, :player_id, :points])
  end
end
