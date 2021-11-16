class ParkingsController < ApplicationController
    before_action :find_index, only: [:show, :edit, :update, :destroy]

    def index
        @parkings = Parking.all
        @user = current_user
    end

    def show
    end

    def new
        @parking = Parking.new
    end

    def create
        @parking = Parking.new(params_parking)
        if @parking.save
            redirect_to parkings_path
        else
            redirect_to new_parking_path
        end    
    end

    def edit
    end


end
