class ItemsController < ApplicationController

	def index
	    @items = Item.page(params[:page]).reverse_order
	    @genres = Genre.all
	end

	def show
		@item = Items.find(params[:id])
		@cart_item = Cartitems.new
	end

	def new
		@item = Items.new
		@genres = Genre.all
	end

	def create
		@item = Item.new(item_params)
	end

	private
	def item_params
	  params.require(:item).permit(:name, :item_image_id, :non_taxed_price, :description)
	end

end
