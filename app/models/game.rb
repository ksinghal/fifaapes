class Game < ActiveRecord::Base
  attr_accessible :losing_score, :winner, :winning_score
end
