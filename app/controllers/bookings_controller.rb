class BookingsController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @booking = Booking.find(params[:id])
    @review = Review.new
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    # @booking = Booking.new(params[:id])
    @booking = Booking.find(booking_params)
    authorize @booking
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def edit

  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :confirmation)
  end
end
