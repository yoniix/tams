class ApplicationController < ActionController::Base
  protect_from_forgery

  #ensure authorization happens on every action
  #check_authorization

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_url
  end
end
