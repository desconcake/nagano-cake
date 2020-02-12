class ItemsController < ApplicationController

	def index
	    @items = Item.page(params[:page]).reverse_order
	    @genres = Genre.all
	end

	def show
		@item = Item.find(params[:id])
		@cart_item = CartItem.new
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.new(item_params)
	end

	private
	def item_params
	  params.require(:item).permit(:name, :item_image, :non_taxed_price, :description)
	end

end
