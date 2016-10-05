class WelcomePageController < ApplicationController

  # before_filter :is_user_loggedin, :only => [:index]


  def index
    @home_page = true
    if is_user_loggedin == true
      redirect_to(:controller => 'dashboard', :action => 'index')
    end

  end



  def is_user_loggedin
    puts "AEK"
    if session[:user_id]
      return true
    else
      return false
    end
  end


end
