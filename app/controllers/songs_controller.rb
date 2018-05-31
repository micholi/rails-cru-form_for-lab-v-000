class SongsController < ApplicationController

  def show
    @show = Show.find(params[:id])
  end

  def new

  end

  def create

  end

  def edit
    @show = Show.find(params[:id])
  end

  def update

  end

  def song_params(*args)
		params.require(:song).permit(*args)
	end

end
