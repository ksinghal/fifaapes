class PagesController < ApplicationController
  def index
  end
  def sign_up
    @player = RegisteredPlayer.new
  end
  def submit_registration
    @player = RegisteredPlayer.create(params[:registered_player])
    @player.winning_pct = 0.to_f
    @player.save
    RegistrationMailer.new_user_email(@player).deliver
  end
  def constitution
  end
end
