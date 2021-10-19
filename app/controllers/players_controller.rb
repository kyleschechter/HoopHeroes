class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def show
  end

  def new
  end

  def create
  end
end
