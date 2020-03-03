class SessionsController < ApplicationController

    def new
    end

    def create
        student = Student.find_by(email: params[:email])
        authenticated = student.try(:authenticate, params[:password])
        return redirect_to(controller: 'sessions', action: 'new') unless authenticated
        @student = student
        session[:student_id] = @student.id
        redirect_to student_path(@student)
    end

    def destroy
        reset_session
        redirect_to login_path
    end
end