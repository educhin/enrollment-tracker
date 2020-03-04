class CoursesController < ApplicationController
    before_action :authentication_required

    def index 
        @courses = Course.all
    end

    def show
        @course = Course.find(params[:id])
    end

    def enroll

    end

    # def ride
    #     @attraction = Attraction.find(params[:attraction_id])
    #     @user = User.find(params[:user_id])
    #     @ride = Ride.create(attraction_id: @attraction.id, user_id: @user.id)
    #     flash[:alert] = @ride.take_ride
    #     redirect_to user_path(@user)
    # end
end