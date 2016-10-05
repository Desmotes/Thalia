class DashboardController < ApplicationController
  def index
    if session[:user_id]
      # set current user object to @current_user object variable
      @user = User.find session[:user_id]
      render 'dashboard/index'
    else
      redirect_to '/'
    end
  end
end
