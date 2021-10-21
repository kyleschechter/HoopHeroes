class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def show

  end

  def new 
    @team = Team.new
    2.times { @team.players.build }
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  # def player_params
  #   params.require(:player).permit(:team_id, :name, :position)
  # end

  def team_params
    params.require(:team).permit(:user_id, :name, :slogan, :image_url, players_attributes: [:team_id, :name, :position])
  end
end
