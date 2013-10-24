class RegistrationMailer < ActionMailer::Base
  default from: 'ksinghal@cafex.com'

  def new_user_email(user)
    @user = user
    mail(to: "pushdatkush1993@gmail.com", subject: @user.name+' registered for FIFA Apes')
  end

  def loser_email(winner, loser, score)
    @loser = loser
    @winner = winner
    @score = score
    mail(to: loser.email, subject: winner.name+" just beat you "+score+" in FIFA Apes")
  end
end
