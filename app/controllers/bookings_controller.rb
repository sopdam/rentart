class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
    @review = Review.new
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params[:id])
    if @booking.save
      redirect_to bookings_show_path(@booking)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to bookings_show_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :confirmation)
  end
end
