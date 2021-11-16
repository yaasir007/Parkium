class ParkingsController < ApplicationController
    def index
        @parkings = Parking.all
        @user = current_user
    end
end
