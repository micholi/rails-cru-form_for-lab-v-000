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
