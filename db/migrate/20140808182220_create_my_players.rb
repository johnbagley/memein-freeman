class CreateMyPlayers < ActiveRecord::Migration
  def change
    create_table :my_players do |t|
      t.belongs_to :team, index: true
      t.integer  "rank",                 default: 0
      t.string   "name"
      t.integer  "completions",          default: 0
      t.integer  "passing_yards",        default: 0
      t.integer  "passing_touchdowns",   default: 0
      t.integer  "interceptions",        default: 0
      t.integer  "rushes",               default: 0
      t.integer  "rushing_yards",        default: 0
      t.integer  "rushing_touchdowns",   default: 0
      t.integer  "receptions",           default: 0
      t.integer  "receiving_yards",      default: 0
      t.integer  "receiving_touchdowns", default: 0
      t.integer  "points",               default: 0

      t.timestamps
    end
  end
end
