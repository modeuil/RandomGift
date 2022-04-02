class UsersController < ApplicationController


  def new
    @user = User.new
  end


  def create
    user_params = params.require(:user).permit(:username, :email,:password, :password_confirmation, :firstname, :lastname)
    @user = User.new(user_params)

    if @user.valid?
      @user.save
      UserMailer.confirm(@user).deliver_now
      redirect_to new_user_path, success: "Your account it's waiting You'll receive a confirmation mail, please check your mailbox"
    else
      puts "echec"
      redirect_to  new_user_path, danger: "An error it's produce thanks to re-try"
    end
  end


  def confirm
    @user = User.find(params[:id])
    if @user.confirmation_token == params[:token]
      @user.confirmed = true
      @user.confirmation_token= nil
      @user.save(validate:false)
      session[:auth] = {id: @user.id}
      redirect_to new_user_path, success: "Your account is actif 🥳"
    else
      redirect_to new_user_path, danger: "This token it's not valid"
    end
  end


end
