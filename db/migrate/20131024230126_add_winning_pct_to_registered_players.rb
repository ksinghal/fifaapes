class AddWinningPctToRegisteredPlayers < ActiveRecord::Migration
  def change
    add_column :registered_players, :winning_pct, :double
  end
end
