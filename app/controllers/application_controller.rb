class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :logged_in
  helper_method :user

  def hello
    # if not logged in, link to login page
    # if logged in, say "hi, #{name}" and show a logout link
    if !logged_in
      redirect_to login_path
    end
  end

  def logged_in
    !!session[:name]
  end

  def user
    session[:name]
  end
end