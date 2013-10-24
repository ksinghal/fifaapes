class RecordsController < ApplicationController
  def index
    @players = RegisteredPlayer.scoped
    @games = Game.scoped
  end
  def new
    @players = RegisteredPlayer.all

    @players.each do |player|
      player.winning_pct = @games.where(winner: player.name).count / ( @games.where(winner: player.name).count + @games.where(loser: player.name).count )
      player.save
    end

    @players = @players.sort_by &:winning_pct

    @game = Game.new
  end
  def create
    @game = Game.create(params[:game])

    @score = "#{@game.winning_score} - #{@game.losing_score}"
    @loser = RegisteredPlayer.where(name: @game.loser).first
    @winner = RegisteredPlayer.where(name: @game.winner).first

    RegistrationMailer.loser_email(@winner, @loser, @score).deliver

    redirect_to records_path
  end
  def destroy
  end
  def edit
  end
  def update
  end
end
