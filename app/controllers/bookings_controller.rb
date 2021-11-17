class BookingsController < ApplicationController

  def index
    @parking = Parking.find(params[:parking_id])
    @bookings = @parking.bookings
    @user = current_user
  end

  def show
    @user = current_user
    @parking = Parking.find(params[:parking_id])
    @booking = @parking.bookings
  end

  def new
    @user = current_user
    @parking = Parking.find(params[:parking_id])
    @booking = Booking.new
  end


private

def booking_params
  params.require(:booking).permit(:date, :start_time, :end_time)
end

end
