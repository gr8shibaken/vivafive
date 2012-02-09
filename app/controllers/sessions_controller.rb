class SessionsController < ApplicationController
  def new
    if current_user
      redirect_to jobs_path
    else
      @users = User.all
    end
  end
  def create
    user = params[:user]
    session[:user_id] = user if user
    redirect_to jobs_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
