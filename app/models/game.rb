class Game < ActiveRecord::Base
  validates :winner, :loser, :winning_score, :losing_score, presence: true
  attr_accessible :losing_score, :winner, :loser, :winning_score
end
