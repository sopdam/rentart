class ArtsController < ApplicationController
  def index
    @arts = Art.all
  end

  def show
    @art = Art.find(params[:id])
  end

  def new
    @art = Art.new
  end

  def create
    @art = Art.new(art_params)
    if @art.save
      redirect_to arts_show_path(@art)
    else
      render :new
    end
  end

  def edit
    @art = Art.find(params[:id])
  end

  def update
    @art = Art.find(params[:id])
    @art.update(art_params)
    redirect_to arts_show_path(@art)
  end

  def destroy
    @art = Art.find(params[:id])
    @art.destroy
    redirect_to arts_index_path
  end

  private

  def art_params
    params.require(:art).permit(:title, :artist, :description, :price, :city, :longitude, :latitude, :dimensions, :picture)
  end
end
