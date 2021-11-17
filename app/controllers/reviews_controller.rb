class ReviewsController < ApplicationController

    def index
        @user = current_user
        @reviews = Review.all
    end

    def new
        @user = current_user
        @parking = Parking.find(params[:parking_id])
        @review = Review.new
    end

    def create
        @review = Review.new(params_reviews)
    end



    private

    def params_reviews
        params.require(:reviews).permit(:content, :rating)
    end
end
