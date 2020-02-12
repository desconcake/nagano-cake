class Admins::ItemsController < ApplicationController
	def index
		@items = Item.all
	end

	def show
		@item = Item.find(params[:id])
		@genre = @item.genre
	end

	def new
		@item = Item.new
		@genres = Genre.all #セレクトボックス
	end

	def create
		@genres = Genre.all
		@item = Item.new(item_params)
		@item.save
	end

	def edit
		@item = Item.find(params[:id])
		@genres = Genre.all #セレクトボックス
	end

	def update
		@genres = Genre.all
		@item.update(item_params)
	end


	private
	def item_params
	    params.require(:item).permit(:name, :sale_status, :genre_id, :item_image_id, :non_taxed_price, :description)
	end
end
