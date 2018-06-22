class SessionsController < ApplicationController
    
    def new
        @user = User.new
    end

    def create
        user = User.find_by(username: params[:user][:username])
        if params[:user][:username]
            login_with_credentials
        else
            login_with_omni
         end
    end

    def destroy
        session.delete :user_id
        redirect_to root_path
    end
    
    def login_with_credentials
        if user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            @user = user
            redirect_to user_path(@user)
        else
            redirect_to login_path
        end
    end

    def login_with_omni
        user = User.from_omniauth(env["omniauth.auth"])
        session[:user_id] = user.id
        redirect_to root_path
    end

end

