class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end
  # current_user() ||= means, If @current_user has a value, great. There’s no need to query the database. However, if @current_user is nil, we’ll make a database query to set the value of @current_user. It’s a small change, but it’s a big improvement in our code.
  def authorize
    if !current_user
      flash[:alert] = "You aren't authorized to visit that page."
      redirect_to '/'
    end
  end
end
