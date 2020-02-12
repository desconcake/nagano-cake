class ItemsController < ApplicationController

  def index
    @items = Item.page(params[:page]).reverse_order
    @items_count = Item.count
    @genres = Genre.where(genre_status: true)

  end

  def show
    @item = Item.find(params[:id])
    @genres = Genre.all
    @cart_item = CartItem.new
  end

end
