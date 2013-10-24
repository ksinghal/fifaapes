class CreateRegisteredPlayers < ActiveRecord::Migration
  def change
    create_table :registered_players do |t|

      t.timestamps
    end
  end
end
