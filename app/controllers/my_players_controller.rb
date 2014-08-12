class MyPlayersController < ApplicationController

  def index
    @my_players = MyPlayer.all
  end

  def show
    @my_player = MyPlayer.find(params[:id])
  end

  def create
    team = current_user.teams.find(params[:team_id])
    my_player = team.my_players.create(my_player_params)
    redirect_to team
  end

  private

  def my_player_params
    params.require(:my_player).permit(
      :rank,
      :name,
      :completions,
      :passing_yards,
      :passing_touchdowns,
      :interceptions,
      :rushes,
      :rushing_yards,
      :rushing_touchdowns,
      :receptions,
      :receiving_yards,
      :receiving_touchdowns,
      :points
    ).merge(user_id: current_user.id)
  end
end
