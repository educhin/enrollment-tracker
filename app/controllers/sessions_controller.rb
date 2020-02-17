class SessionsController < ApplicationController

    def new
    end

    def create
        student = Student.find_by(email: params[:email])
        if student
            session[:user_id] = student.id
    end

    def destroy
        reset_session
        # set redirect_to root_path once created
    end
end