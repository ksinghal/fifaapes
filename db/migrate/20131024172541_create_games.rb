class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :winner
      t.integer :winning_score
      t.integer :losing_score

      t.timestamps
    end
  end
end
