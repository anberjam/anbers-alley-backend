class ReviewsController < ApplicationController

    def index 
        reviews = Review.all
        render json: reviews
    end

    def show
        review = Review.find(params[:id])
        render json: review
    end

    def create
        review = Review.create(user_id: params[:user_id], product_id: params[:product_id], comment: params[:comment], rating: params[:rating])
        render json: review
    end

end