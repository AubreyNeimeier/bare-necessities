class SessionsController < ApplicationController
    
    def new
        @user = User.new
    end

    def create
        binding.pry
        if auth_hash = request.env["omniauth.auth"]
            #they logged in via OAuth
        
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
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:password])
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

