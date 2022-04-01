class UserMailer < ApplicationMailer


  def confirm(user)
    @user = user
    mail(to: @user.email, subject: "Your subscription" )
  end


end
