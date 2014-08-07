class RenamePlayerTable < ActiveRecord::Migration
  def change
    rename_table :players, :draftees
  end
end
