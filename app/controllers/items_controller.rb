class ItemsController < ApplicationController

  def index
    @items = Item.page(params[:page]).reverse_order
    @items_count = Item.count
    @genres = Genre.where(genre_status: true)
  end

  def devide
    @devide_items = Item.where(genre_id: params[:id])
    @items_count = @devide_items.count
    @genres = Genre.where(genre_status: true)
    @genre = Genre.find(params[:id])
  end

  def show
    @item = Item.find(params[:id])
    @genres = Genre.where(genre_status: true)
    @cart_item = CartItem.new
  end

	def new
		@item = Item.new
	end

	private
	def item_params
	  params.require(:item).permit(:name, :item_image, :non_taxed_price, :description)
	  params.require(:cart_item).permit(:quantity)
	end

end
