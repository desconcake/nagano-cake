class CartItemsController < ApplicationController
  def index
    @cart_items = CartItem.all
  end

  def create
    @cart_item = CartItem.new(cart_item_params)
    item_id = item.id #必要なカラムに情報を入れてあげる
    @cart_item.save
  end

  def edit
    @cart_item = CartItem.find(params[:id])
  end

  def update
    @cart_item.update(cart_item_params)
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
  end

  def clear
    @cart_items = CartItem.all
    @cart_items.destroy_all
  end

  private
  def cart_item_params
      params.require(:cart_item).permit(:quantity)
  end
end

