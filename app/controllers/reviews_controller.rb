class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @review = Review.new
    @review.booking = Booking.find(params[:booking_id])
    @review.user = current_user
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.booking = Booking.find(params[:booking_id])
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :description, :rating)
  end
end
