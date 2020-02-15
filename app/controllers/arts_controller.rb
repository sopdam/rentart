class ArtsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @arts = policy_scope(Art)
    @arts = Art.geocoded # returns arts with coordinates
    @markers = @arts.map do |art|
      {
        lat: art.latitude,
        lng: art.longitude,
        infoWindow: render_to_string(partial: "/arts/info_window", locals: { art: art }),
        image_url: helpers.asset_url('palette.png')
      }
    end
  end

  def show
    @art = Art.find(params[:id])
    authorize @art
  end

  def new
    @art = Art.new
    authorize @art
  end

  def create
    @art = Art.new(art_params)
    @art.user = current_user
    authorize @art

    if @art.save!
      redirect_to art_path(@art)
    else
      render :new
    end
  end

  def edit
    @art = Art.find(params[:id])
    authorize @art
  end

  def update
    @art = Art.find(params[:id])
    authorize @art
    @art.update(art_params)
    redirect_to art_path(@art)
  end

  def destroy
    @art = Art.find(params[:id])
    authorize @art
    @art.destroy
    redirect_to arts_path
  end

  private

  def art_params
    params.require(:art).permit(:user_id, :title, :artist, :description, :price, :city, :longitude, :latitude, :dimensions, :photo, :rating)
  end
end
