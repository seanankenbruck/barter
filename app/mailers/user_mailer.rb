class UserMailer < ActionMailer::Base
  default from: 'dacur7@gmail.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'localhost:3000/login'
    mail(to: @user.email, subject: 'Welcome to Barter!')
  end
end
