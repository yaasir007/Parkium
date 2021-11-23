class BookingsController < ApplicationController
  before_action :booking_params, only: :create

  def index
    @user = current_user
    @bookings = Booking.all
    @parking = Parking.find(params[:parking_id])
  end

  def new
    @user = current_user
    @parking = Parking.find(params[:parking_id])
    @booking = Booking.new
  end

  def create
      @user = current_user
      @parking = Parking.find(params[:parking_id])
      @booking = Booking.new(booking_params)
      @booking.user_id = @user.id
      @booking.parking_id = @parking.id
      if @booking.save!
          @parking.update(available_slots: @parking.available_slots - 1)
          flash[:alert] = "Booking Created."
          redirect_to mybookings_path
      else
          redirect_to new_parking_booking_path(@parking)
      end
    end

    def destroy
      @booking = Booking.find(params[:id])
      if @booking.destroy!
        flash[:alert] = "Booking Removed."
        redirect_to mybookings_path
      else
        render "my_bookings"
      end
    end

  private

  def booking_params
    params.require(:booking).permit(:date, :start_time, :end_time)
  end
end
