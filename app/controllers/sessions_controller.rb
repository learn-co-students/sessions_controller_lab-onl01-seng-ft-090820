class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to login_path, alert: "Name cannot be blank"
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    if session[:name]
      session.delete :name
      redirect_to login_path, alert: "You are now logged out"
    end
  end

end
