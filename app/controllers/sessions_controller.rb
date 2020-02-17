class SessionsController < ApplicationController

    def new
    end

    def create
        student = Student.find_by(email: params[:email])
        authenticated = student.try(:authenticate, params[:student][:password])
        return redirect_to(controller: 'sessions', action: 'new') unless authenticated
        @student = student
        session[:student_id] = @student.id
        # set redirect_to student_path(@student) once created
    end

    def destroy
        reset_session
        # set redirect_to root_path once created
    end
end