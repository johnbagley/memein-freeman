class TeamsController < ApplicationController
  def new
    @team = current_user.team.new
  end

  def show
    @team = current_user.teams.find(params[:id])
    @player = @team.players.read_file
    @players = Player.all
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
