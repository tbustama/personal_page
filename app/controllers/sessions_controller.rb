class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if (user && user.authenticate(params[:password])) && (user.key == params[:key])
      session[:user_id] = user.id
      redirect_to home_path
    else
      flash.now[:alert] = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
