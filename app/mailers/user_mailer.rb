class UserMailer < ApplicationMailer


  def confirm(user)
    @user = user
    mail(to: user.email, subject: "Your subscription to "  + Rails.application.config.site[:name])
  end


end
