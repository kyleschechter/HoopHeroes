class PerformancesController < ApplicationController
  def create
    errors = []
    performance_params.each do |per|
      performance = Performance.new(per.permit(:game_id, :player_id, :points, :assists, :rebounds))
      errors << "Failed to save stats!" unless performance.save
    end
    redirect_to root_path if errors.empty?
  end

  def performance_params
    params.require(:performances)
  end
end