class BookingsController < ApplicationController
before_action :booking_params, only: :create

<<<<<<< HEAD
<<<<<<< HEAD
  def index
    @bookings = Booking.all
    @user = current_user
  end

=======
>>>>>>> e38d7f6e73d2134f9ac984e757153186a653ec56
=======
>>>>>>> e38d7f6e73d2134f9ac984e757153186a653ec56
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
<<<<<<< HEAD
<<<<<<< HEAD
      @counter = 1
      if @booking.save!
        @parking.available_slots
          redirect_to parking_bookings_path(@parking)
=======
      if @booking.save!
          flash[:alert] = "Booking Created."
          redirect_to mybookings_path
>>>>>>> e38d7f6e73d2134f9ac984e757153186a653ec56
=======
      if @booking.save!
          flash[:alert] = "Booking Created."
          redirect_to mybookings_path
>>>>>>> e38d7f6e73d2134f9ac984e757153186a653ec56
      else
          redirect_to new_parking_booking_path(@parking)
      end
  end


private

def booking_params
  params.require(:booking).permit(:date, :start_time, :end_time)
end

end
