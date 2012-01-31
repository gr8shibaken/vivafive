class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate

  USERNAME = "admin"	
  PASSWORD = "purplecow"

  protected
  def authenticate
    authenticate_or_request_with_http_basic do |name,password|
      (@name = name) == USERNAME && password == PASSWORD
    end
  end	
end
