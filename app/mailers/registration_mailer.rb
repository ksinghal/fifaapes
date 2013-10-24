class RegistrationMailer < ActionMailer::Base
  default from: 'ksinghal@cafex.com'

  def new_user_email(user)
    @user = user
    mail(to: "pushdatkush1993@gmail.com", subject: '#{user.name} registered for FIFA Apes')
  end
end
