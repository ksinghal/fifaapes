class RecordsController < ApplicationController
  def index
    @players = RegisteredPlayer.scoped
    @games = Game.scoped
  end
  def new
    @players = RegisteredPlayer.all
    @game = Game.new
  end
  def create
    @game = Game.create(params[:game])
    @score = "#{@game.winning_score} - #{@game.losing_score}"
    RegistrationMailer.loser_email(@game.winner, @game.loser, @score).deliver
  end
  def destroy
  end
  def edit
  end
  def update
  end
end
