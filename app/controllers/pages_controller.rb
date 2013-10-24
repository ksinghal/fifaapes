class PagesController < ApplicationController
  def index
  end
  def sign_up
    @player = RegisteredPlayer.new
  end
  def submit_registration
    @player = RegisteredPlayer.create(params[:registered_player])
    RegistrationMailer.new_user_email(@player)
  end
  def constitution
  end
end
