class UsersController < ApplicationController

    def my_bookings
            @user=current_user
    end

end
