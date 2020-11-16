class SessionsController < ApplicationController

    def new
        # user enters name, clicks login, app refers to them by name
    end

    def create
        # handles actually logging user in
        if params[:name] && params[:name] != ""
            session[:name] = params[:name]
            redirect_to root_path
        else
            redirect_to login_path
        end
    end

    def destroy
        # handles logout
        session.clear
        redirect_to root_path
    end
end