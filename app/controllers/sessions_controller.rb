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

    def github
        @student = Student.find_or_create_by(uid: auth['uid']) do |u|
            if auth['info']['name'] != nil
                u.first_name = auth['info']['name']
            elsif auth['info']['nickname'] != nil
                u.first_name = auth['info']['nickname']
            else
                u.first_name = "Please insert your name"
            end
            u.email = auth['info']['email']

            u.password = u.password_confirmation = SecureRandom.urlsafe_base64(n=16) 
          end
          
          session[:student_id] = @student.id
          
          redirect_to student_path(@student)
    end

    def destroy
        reset_session
        redirect_to login_path
    end

    private
 
    def auth
      request.env['omniauth.auth']
    end
end