class AddLoserToGame < ActiveRecord::Migration
  def change
    add_column :games, :loser, :string
  end
end
