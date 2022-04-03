class ApplicationController < ActionController::Base

  before_action :only_signed_in
  add_flash_types :success, :danger
  helper_method :current_user

  private

  def only_signed_in
    if !current_user
      redirect_to new_user_path, danger: "⛔️⛔️⛔ ️FORBIDDEN ⛔️⛔️⛔️"
    end
  end

  def current_user
    return nil if !session[:auth] || !session[:auth]['id']
    return User.find(session[:auth]['id'])
  end
end
