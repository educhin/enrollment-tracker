class ApplicationController < ActionController::Base
    before_action :current_student
    helper_method :current_student

    def current_student
        @current_student ||= (Student.find_by(id: session[:student_id]) || Student.new)
        # not certain which method is perfered as of yet
        # @current_student ||= Student.find_by(id: session[:student_id]) if session[:student_id]
    end
  
    def logged_in?
      current_student.id != nil
    #   or !!current_student if using second code line in current_student
    end
  
    def authentication_required
        if !logged_in?
            # flash[:notice] = "You must be logged in to view that page."
            redirect_to login_path, flash: {notice: "You must be logged in to view that page."}
        end
    #   return redirect_to(controller: 'sessions', action: 'new') unless logged_in?
    end
end
