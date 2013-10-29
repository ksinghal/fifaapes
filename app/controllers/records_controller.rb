class RecordsController < ApplicationController
  def index
    @players = RegisteredPlayer.scoped
    @gamtes = Game.scoped
    @players.each do |player|
      if (( Game.where(winner: player.name).count + Game.where(loser: player.name).count ) <= 0)
        player.winning_pct = 0
        puts "WINNING PCT IS 0 BECAUSE NO GAMES PLAYED!!!"
      else
        player.winning_pct = Game.where(winner: player.name).count / ( Game.where(winner: player.name).count + Game.where(loser: player.name).count )
        puts "WINNING PCT IS NOW LOGGED SUCCESS!!!"
      end
      player.save
    end
  end
  def new
    @players = RegisteredPlayer.all
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
