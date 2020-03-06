class StudentsController < ApplicationController
    before_action :authentication_required, only: [:show, :index, :update]
    # before action will be on ibdex and show methods
    def index
        # this page should only be accesible by admins.
        # Other students should not be able to see a entire list of students
        @students = Student.all
    end

    def show
        #update link to show students name
        student = Student.find(session[:student_id])
        @student = student
        @courses = student.courses
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            session[:student_id] = @student.id
            redirect_to student_path(@student)
        else
            render :new
        end
    end

    def edit
        @student = Student.find(session[:student_id])
    end

    def update
        @student = Student.find(session[:student_id])
        if @student.update(student_params)
            redirect_to student_path(@student)
        else
            render :edit
        end
    end

    private

    def student_params
        student_params = params.require(:student).permit(:first_name, :last_name, :classification, :email, :password, :password_confirmation)
        student_params.delete(:password) unless student_params[:password].present?
        student_params.delete(:password_confirmation) unless student_params[:password_confirmation].present?
        student_params
    end
end