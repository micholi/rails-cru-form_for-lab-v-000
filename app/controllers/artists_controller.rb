class ArtistsController < ApplicationController

  def show

  end

  def index
    @artists = Artist.all
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def artist_params(*args)
		params.require(:artist).permit(*args)
	end

end
