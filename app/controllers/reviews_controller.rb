class ReviewsController < ApplicationController
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
      redirect_to bookings_show_path(@booking)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :description, :rating)
  end
end
