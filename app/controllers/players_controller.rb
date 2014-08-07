class PlayersController < ApplicationController
  def create
    player = Player.create(player_params)
    redirect_to team_path
  end

  private

  def player_params
    params.require(:player).permit(
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
    )
  end
end
