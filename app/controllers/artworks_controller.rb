class ArtworksController < ApplicationController

  def index
  end

  def show
  end

  def new
    @artwork = Artwork.new
    @artists = Artist.order(:name)
    @collections = current_user.collections
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.save
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :photo, :artist_id, :completion_year, :description, :notes, :collection_id)
  end

end
