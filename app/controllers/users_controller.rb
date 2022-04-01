class UsersController < ApplicationController


  def new
    @user = User.new
  end


  # POST /users or /users.json
  def create
    user_params = params.require(:user).permit(:username, :email,:password, :password_confirmation, :firstname, :lastname)
    @user = User.new(user_params)

    if @user.valid?
      @user.save
      UserMailer.confirm(@user).deliver_now
      redirect_to new_user_path, success: "Your account it's waiting You'll receive a confirmation mail, please check your mailbox"
    else
      puts "echec"
      render 'new'
    end


  end


end
