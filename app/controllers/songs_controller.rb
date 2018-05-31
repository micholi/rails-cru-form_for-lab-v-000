class SongsController < ApplicationController

  def show
    @show = Song.find(params[:id])
  end

  def index
    @shows = Show.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params(:name, :artist_id, :genre_id))
    @song.save
   	redirect_to song_path(@song)
  end

  def edit
    @show = Song.find(params[:id])
  end

  def update

  end

  def song_params(*args)
		params.require(:song).permit(*args)
	end

end
