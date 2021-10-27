class PerformancesController < ApplicationController
  def create
    errors = []
    performances_hash.each do |per|
      performance = Performance.new(per.permit(:game_id, :player_id, :points, :assists, :rebounds))
      errors << "Failed to save stats!" unless performance.save
    end
    redirect_to root_path if errors.empty?
  end

  def performances_hash
    params.require(:performances)
  end

  def permitted_performance_params(params)

  end
end