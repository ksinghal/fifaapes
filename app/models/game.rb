class Game < ActiveRecord::Base
  attr_accessible :losing_score, :winner, :loser, :winning_score
end
