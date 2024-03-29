class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
#  protect_from_forgery with: :null_session

  def current_user
    return unless session[:user_id]
    @current_user ||= User.where(user_token: session[:user_id]).first_or_create
  end
end
