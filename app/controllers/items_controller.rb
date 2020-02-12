class ItemsController < ApplicationController

	def index
	    @items = Item.page(params[:page]).reverse_order
	    @genres = Genre.where(genre_status: true)
	    @items_count = Item.count
	end

	def show
		@item = Item.find(params[:id])
		@genres = Genre.all
		@cart_item = CartItem.new
	end

	def new
		@item = Item.new
	end

	# def create
	# 	@cart_item = CartItem.new(item_params)
	# 	@cart_item.save
	# 	redirect_to cart_items_path(current_customer)
	end

	private
	def item_params
	  params.require(:item).permit(:name, :item_image, :non_taxed_price, :description)
	  params.require(:cart_item).permit(:quantity)
	end

end
