class ReviewsController < ApplicationController
before_action :params_reviews, only: [:create, :edit]
before_action :find_user, only:[:index, :new, :create, :destroy]

    def index
        @parking = Parking.find(params[:parking_id])
        @reviews = Review.all
    end

    def new

        @parking = Parking.find(params[:parking_id])
        @review = Review.new
    end

    def create
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

   def destroy
        @parking = Parking.find(params[:parking_id])
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to parking_reviews_path(@parking)
        flash[:alert] = "Review Removed."
   end
       
    private

    def find_user
        @user = current_user
    end

    def params_reviews
        params.require(:review).permit(:content, :rating)
    end
end
