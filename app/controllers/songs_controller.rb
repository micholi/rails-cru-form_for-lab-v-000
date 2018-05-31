class SongsController < ApplicationController

  def show

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def song_params(*args)
		params.require(:song).permit(*args)
	end

end
