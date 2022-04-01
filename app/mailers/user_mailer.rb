class UserMailer < ApplicationMailer


  def confirm(user)
    @user = user
    mail(to: @user.email, subject: "Your subscription"  + Rails.application.config.site[:name])
  end


end
