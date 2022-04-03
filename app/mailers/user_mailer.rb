class UserMailer < ApplicationMailer


  def confirm(user)
    @user = user
    mail(to: user.email, subject: "Your subscription to "  + Rails.application.config.site[:name])
  end

  def gift_test(mail, name)
    @name = name
    mail(to: mail, subject: "Your gift to "  + name)
  end


end
