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
        review = Review.create(user_id: params[:user_id], product_id: params[:product_id], comment: params[:comment], rating: params[:rating], name: params[:name])
        render json: review
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
        render json: review
    end

    def update
        review = Review.find(params[:id])
        review.update(user_id: params[:user_id], product_id: params[:product_id], comment: params[:comment], rating: params[:rating], name: params[:name])
        render json: review
    end

end