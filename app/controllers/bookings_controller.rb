class BookingsController < ApplicationController
before_action :booking_params, only: :create

  def index
    @parking = Parking.find(params[:parking_id])
    @bookings = @parking.bookings
    @user = current_user
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
          flash[:alert] = "Booking Created."
          redirect_to parking_bookings_path(@parking)
      else
          redirect_to new_parking_booking_path(@parking)
      end
  end


private

def booking_params
  params.require(:booking).permit(:date, :start_time, :end_time)
end

end
