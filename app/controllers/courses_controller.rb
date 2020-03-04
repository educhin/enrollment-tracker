class CoursesController < ApplicationController
    before_action :authentication_required
    
    def index 
        @courses = Course.all
    end

    def show
        @course = Course.find(params[:id])
    end
end