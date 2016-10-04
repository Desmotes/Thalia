require 'digest'

class SessionsController < ApplicationController


  def login
    if params[:password].to_s == '' || params[:username].to_s == ''
      redirect_to '/'
    else
      @user = User.authenticate(params[:username],params[:password])
      if @user
        render 'sessions/login'
      else
        redirect_to '/'
      end
    end

 end

end
