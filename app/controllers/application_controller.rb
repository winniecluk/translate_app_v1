class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  private

  helper_method :current_user

  def authorize
    redirect_to login_path, alert: "Please log in!" if current_user.nil?
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

end
