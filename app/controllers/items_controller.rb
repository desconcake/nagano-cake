class ItemsController < ApplicationController

  def index
    if params[:genre_id] != nil
    @items = Item.where(genre_id: params[:genre_id]).page(params[:page]).reverse_order
    @items_count = @items.count
    @genres = Genre.where(genre_status: true)
    @genre = Genre.find(params[:genre_id])
    else
    @items = Item.all.page(params[:page]).reverse_order
    @items_all = Item.all
    @items_count = @items_all.count
    @genres = Genre.where(genre_status: true)
    @genre = Genre.all
    end

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
