class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate
  helper_method :current_user

  USERNAME = "admin"	
  PASSWORD = "purplecow"

  protected
  def authenticate
    authenticate_or_request_with_http_basic do |name,password|
      (@name = name) == USERNAME && password == PASSWORD
    end
  end
  	
  def login_check
    redirect_to root_path if current_user.nil?
  end
  
  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end
  
  def current_user=(user)
    @current_user = user
    session[:user_id] = user.id
  end
  
end
