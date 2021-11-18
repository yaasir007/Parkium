class UsersController < ApplicationController

    def my_bookings
            @user=current_user
            @bookings = Booking.all
    end

end
