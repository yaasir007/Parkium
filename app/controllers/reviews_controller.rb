class ReviewsController < ApplicationController
before_action :params_reviews, only: :create

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
        @user = current_user
        @parking = Parking.find(params[:parking_id])
        @review = Review.new(params_reviews)
        @review.user_id = @user.id
        @review.parking_id = @parking.id
        if @review.save!
            redirect_to parking_reviews_path(@parking)
            flash[:alert] = "Review Created."
        else
            redirect_to new_parking_review_path(@parking)
        end    
    end



    private

    def params_reviews
        params.require(:review).permit(:content, :rating)
    end
end
