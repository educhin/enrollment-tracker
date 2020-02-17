class ApplicationController < ActionController::Base
    before_action :current_user

    def current_user
      @user = (User.find_by(id: session[:user_id]) || User.new)
    end
  
    def logged_in?
      current_user.id != nil
    end
  
    def authentication_required
        if !logged_in?
            flash[:alert] = "You must be logged in to view that page."
            redirect_to login_path
        end
    #   return redirect_to(controller: 'sessions', action: 'new') unless logged_in?
    end
end
