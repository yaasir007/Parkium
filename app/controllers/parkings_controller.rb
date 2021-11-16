class ParkingsController < ApplicationController
    
    def index
        @parkings = Parking.all
    end

    def show
        @parking = Parking.find(params[:id])
    end

    def new
        @parking = Parking.new
    end

    # def create
    #     @parking = Parking.find(params_parking)
    # end



end
