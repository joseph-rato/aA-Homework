class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'

  def welcome_email(user)
    @user = user
    @url = 'http://example.com/login'
    mail(to: user.email, subject: 'LOOK AT MY CATS YOU WISH YOU HAD THEM RIGHTTTTTTT???????? well you can :)')
  end
end
