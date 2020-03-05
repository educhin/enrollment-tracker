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

    # def ride
    #     @attraction = Attraction.find(params[:attraction_id])
    #     @user = User.find(params[:user_id])
    #     @ride = Ride.create(attraction_id: @attraction.id, user_id: @user.id)
    #     flash[:alert] = @ride.take_ride
    #     redirect_to user_path(@user)
    # end
end