class ApplicationController < ActionController::Base
    protect_from_forgery

    def current_user
        session_user_id = session[:user_id]
        User.find_by(id: session_user_id)
    end
    
    helper_method :current_user

end

