class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?, :require_login, :days_in_month

    def days_in_month
        m = Date.today.month 
        y = Date.today.year
        days = Time.days_in_month(m, y)
    end

    def require_login
        return redirect_to(controller: 'sessions', action: 'new') unless logged_in?
    end
  
    def current_user
        @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    end
  
    def logged_in?
        !current_user.nil?
    end
end
