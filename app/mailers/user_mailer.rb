class UserMailer < ActionMailer::Base
  default from: "info@crewnow.org"
  #from is the "From: email address"
  def confirmation_email(user)
    @user = user
    @url = 'http://crewnow.org/races'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
