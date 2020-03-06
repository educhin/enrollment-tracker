class CoursesController < ApplicationController
    before_action :authentication_required

    def index 
        @courses = Course.all
    end

    def show
        @course = Course.find(params[:id])
    end

    def enroll
        @student = Student.find(session[:student_id])
        @course = Course.find(params[:course_id])
        @enrollment = Enrollment.create(student_id: @student.id, course_id: @course.id, payment_method: params[:payment_method], semester: params[:semester])
        flash[:alert] = "You have successfully enrolled in #{@course.title}"
        redirect_to student_path(@student)
    end
end