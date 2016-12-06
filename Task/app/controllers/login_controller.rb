class LoginController < ApplicationController

  def index
  end

  def authenticate
    @user = User.find_by username: params[:username], password: params[:password]

    if @user
      flash[:message] = "You have been logged in"
      session[:user_id] = @user.user_id
      redirect_to home_path
    else
      flash[:message] = "You have not been logged in. User can't be found"
      redirect_to login_path
    end
  end

  def logout
    session[:user_id] = nil;
    flash[:message] = "You have been logged out"
    redirect_to home_path
  end
end
