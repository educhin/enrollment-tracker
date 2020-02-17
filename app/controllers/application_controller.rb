class ApplicationController < ActionController::Base
    before_action :current_student
    helper

    def current_student
      @student = (student.find_by(id: session[:student_id]) || Student.new)
    end
  
    def logged_in?
      current_student.id != nil
    end
  
    def authentication_required
        if !logged_in?
            flash[:alert] = "You must be logged in to view that page."
            redirect_to login_path
        end
    #   return redirect_to(controller: 'sessions', action: 'new') unless logged_in?
    end
end
