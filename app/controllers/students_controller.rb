class StudentsController < ApplicationController
    def index
        # this page should only be accesible by admins.
        # Other students should not be able to see a entire list of students
        @students = Student.all
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            redirect_to student_path(@student)
        else
            render :new
        end
    end

    def edit

    end

    def update

    end

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name, :classification, :email, :password, :password_confirmation)
    end

end