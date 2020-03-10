class CoursesController < ApplicationController
    before_action :authentication_required

    def index 
        if params[:student_id]
            @courses = Student.find(params[:student_id]).courses
        else
            @courses = Course.all
        end
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

    def drop_class
        @student = current_student
        @course = Course.find(params[:course_id])
        enrollment = Enrollment.find_by(student_id: @student.id, course_id: @course.id)
        enrollment.destroy
        flash[:alert] = "You have successfully dropped  #{@course.title}"
        redirect_to student_path(@student)
    end
end