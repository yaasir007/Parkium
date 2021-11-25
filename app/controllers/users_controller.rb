class UsersController < ApplicationController

    def my_bookings
        @user=current_user
        @bookings = Booking.all
    end

    def parking_admin
        @user=current_user
        @parkings = Parking.all
    end

    def surprise
        
    end

end
