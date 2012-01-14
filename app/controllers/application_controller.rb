class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
=begin  
  def current_user_super
    @current_user_super ||= User.find(session[:user_super]) in session[:user
=end
end
