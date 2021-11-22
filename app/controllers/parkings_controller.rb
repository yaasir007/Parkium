class ParkingsController < ApplicationController
    before_action :find_index, only: [:show, :edit, :update, :destroy]
    before_action :find_user, only: [:index, :show, :edit, :new, :create]
    before_action :params_parking, only: [:create]


    def index
        @parkings = Parking.all

        # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
        @markers = @parkings.geocoded.map do |parking|
            {
            lat: parking.latitude,
            lng: parking.longitude,
            info_window: render_to_string(partial: "info_window", locals: { parking: parking })
            }
        end
    end

    def show
    end

    def new
        @parking = Parking.new
    end

    def create
        @parking = Parking.new(params_parking)
        @parking.user_id = @user.id
        if @parking.save!
            redirect_to parkings_path
            flash[:alert] = "Parking Created."
        else
            redirect_to new_parking_path
        end    
    end

    def edit
    end

    def update
        @parking.update(params_parking)
        redirect_to parkings_path
        flash[:alert] = "Parking Updated."
    end

    def destroy
        @parking.destroy
        redirect_to parkings_path
        flash[:alert] = "Parking Space Removed."
    end


    private

    def find_index
        @parking = Parking.find(params[:id])
    end

    def find_user
        @user = current_user
    end

    def params_parking
        params.require(:parking).permit(:name, :address, :description, :photo, :number_of_slots, :fees)
    end

end
