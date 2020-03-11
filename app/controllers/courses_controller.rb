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
end