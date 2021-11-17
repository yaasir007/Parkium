class BookingsController < ApplicationController
  def index
    @parking = Parking.find(params[:parking_id])
    @bookings = @parking.bookings
    @user = current_user
  end

  def show
    @parking = Parking.find(params[:parking_id])
    @booking = @parking.bokings
  end

  def new
    @parking = Parking.find(params[:parking_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.parking = @parking
    @bookings.save
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

#def find_parking
#@parking = Parking.find(params[:parking_id])
#end
def booking_params
  params.require(:parking).permit(:date, :start_time, :end_time)
end

end
