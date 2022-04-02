class EventsController < ApplicationController

  def creation
    @user = User.find(session[:auth]['id'])
  end

  def random

  end


end