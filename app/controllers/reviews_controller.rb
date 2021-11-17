class ReviewsController < ApplicationController

    def index
        @user = current_user
        @reviews = Review.all
    end


end
