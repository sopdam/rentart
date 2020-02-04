class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @booking = Booking.new
    @art = Art.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_user_session_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_show_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:full_name, :email, :password)
  end
end
