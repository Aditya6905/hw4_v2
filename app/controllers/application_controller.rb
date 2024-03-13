# app/controllers/application_controller.rb

class ApplicationController < ActionController::Base
  before_action :require_login, except: [:new, :create]

  private

  def require_login
    unless logged_in? || request.path == login_path || request.path == signup_path
      flash[:alert] = 'You must be logged in to access this page.'
      redirect_to login_path
    end
  end

  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end