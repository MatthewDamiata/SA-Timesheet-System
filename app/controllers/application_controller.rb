class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	# app/controllers/application_controller.rb

#   ...
  helper_method :current_user

  protected

  # accessor
  def current_user
    # Avoid unnecessary database queries
    @current_user ||= User.find(session[:user_id])
  end

# mutator:  gets set in sessions controller
def current_user=(user)
  @current_user = user
end
end
