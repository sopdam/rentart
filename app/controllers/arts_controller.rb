class ArtsController < ApplicationController
  def index
    @arts = policy_scope(Art)
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
    authorize @art
    if @art.save
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
    params.require(:art).permit(:title, :artist, :description, :price, :city, :longitude, :latitude, :dimensions, :photo)
  end
end
