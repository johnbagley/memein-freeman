class Player < ActiveRecord::Base
  require 'csv'

  def self.read_file
    CSV.foreach('lib/assets/players.csv', headers: true)  do |row|
      Player.create!(row.to_hash)
    end
  end
end
