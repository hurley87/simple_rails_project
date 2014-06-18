class PicturesController < ApplicationController
	def index
		@pictures = Picture.all
	end

	def new
		@picture = Picture.new
	end

	def create
		@picture = Picture.create(picture_params)
		redirect_to root_path
	end
	def show
		@picture = Picture.find(params[:id])
	end

	def delete
		@picture = Picture.find(params[:id])
		Picture.destroy(@picture)
		redirect_to root_path
	end
	def update
		@picture = Picture.find(params[:id])
	end
	
	private

	def picture_params
		params.require(:picture).permit(:title, :caption, :url)
	end


end
