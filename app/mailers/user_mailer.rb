class UserMailer < ApplicationMailer


  def confirm(user)
    @user = user
    mail(to: user.email, subject: "Your subscription to "  + Rails.application.config.site[:name])
  end

  def gift_test(mail, name, max_amount, title)
    @name = name
    @max_amount = max_amount
    @title = title
    mail(to: mail, subject: "Secret Santa ! Open quickly 🎄 "  + name)
  end


end
