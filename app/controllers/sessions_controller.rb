class SessionsController < ApplicationController
    def new
    end

    def create

    end

    def destroy
        reset_session
        # set redirect_to root_path once created
    end
end