class PicturesController < ApplicationController
	def index
		@pictures = Picture.all
	end

	def new
		@picture = Picture.create(picture_params)
	end

	def create
		
	end

	def delete

	end
	def update
	end
	
	private

	def picture_params
		params.require(:picture).permit(:title, :caption, :url)
	end


end
