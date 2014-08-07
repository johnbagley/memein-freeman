class TeamsController < ApplicationController
  def new
    @team = Team.new
  end

  def show
    @team = Team.find(params[:id])
  end

  def create
    team = Team.create(team_params)
    redirect_to dashboard_path
  end

  private

  def team_params
    params.require(:team).permit(:name).merge(user_id: current_user.id)
  end
end
