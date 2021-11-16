class ParkingsController < ApplicationController
    before_action :find_index, only: [:show, :edit, :update, :destroy]
    
    def index
        @parkings = Parking.all
        @user = current_user
    end

    def show
    end
end
