class Draftee < ActiveRecord::Base
  require 'csv'
  belongs_to :team

  def self.read_file
    CSV.foreach('lib/assets/players.csv', headers: true)  do |row|
      Draftee.create!(row.to_hash)
    end
  end
end
