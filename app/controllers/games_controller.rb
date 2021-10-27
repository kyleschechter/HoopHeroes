class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @home_player1 = @game.home_team.players.first
    @hp1_form = @game.performances.build(player: @home_player1)

    @home_player2 = @game.home_team.players.second
    @hp2_form = @game.performances.build(player: @home_player2)

    @away_player1 = @game.away_team.players.first
    @ap1_form = @game.performances.build(player: @away_player1)

    @away_player2 = @game.away_team.players.second
    @ap2_form = @game.performances.build(player: @away_player2)
    ## Better variable names
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  private

  def game_params
    params.require(:game).permit(:home_team_id, :away_team_id, performances_attributes: [:game_id, :player_id, :points])
  end
end
