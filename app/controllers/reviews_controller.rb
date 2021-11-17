class ReviewsController < ApplicationController

    def index
        @user = current_user
        @reviews = Review.all
    end

    def new
        @review = Review.new
    end

    def create
        
    end


end
