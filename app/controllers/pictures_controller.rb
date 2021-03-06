class PicturesController < ApplicationController
	def index
		@pictures = Picture.newest_five
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

	def destroy
		@picture = Picture.find(params[:id])
		Picture.destroy(@picture)
		redirect_to root_path
	end
	def edit
		@picture = Picture.find(params[:id])
	end
	def update
		@picture = Picture.find(params[:id])
		@picture.update_attributes(picture_params)
		redirect_to root_path
	end
	
	private

	def picture_params
		params.require(:picture).permit(:title, :caption, :url)
	end


end
