class ArtistsController < ApplicationController
	def create
		@artist = Artist.new(artist_params)
		if @artist.save
			render :json => @artist
		else
			render plain: "uh oh"
		end
	end
	def artist_params
		params.require(:artist).permit(:name, :title, :copy, :lat, :long, :when, :facebook, :twitter, :insta, :website)
	end
	def new
	end
end
