require 'digest'

class SessionsController < ApplicationController


  def login
    if params[:password].to_s == '' || params[:username].to_s == ''
      flash[:string] = "Username or Password is empty"
      redirect_to '/'
    else
      @user = User.authenticate(params[:username],params[:password])
      if @user
        session[:user_id] = @user.id
        # render 'sessions/login'
        # redirect_to 'dashboard#index'
        redirect_to(:controller => 'dashboard', :action => 'index')
      else
        flash[:empty] = "Wrong Username or Password"
        redirect_to '/'
      end
    end
 end


 def logout
  session[:user_id] = nil
  redirect_to '/'
end


end
