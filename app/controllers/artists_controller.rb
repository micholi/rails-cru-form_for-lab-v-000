class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(song_params(:name, :bio))
    @artist.save
   	redirect_to artist_path(@artist)
  end

  def edit

  end

  def update

  end

  def artist_params(*args)
		params.require(:artist).permit(*args)
	end

end
