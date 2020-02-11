class CartItemsController < ApplicationController
  def index
    @cart_items = CartItems.all
  end

  def new
    @cart_item = CartItems.new
  end

  def create
    @cart_item = CartItems.new(cart_item_params)
    @cart_item.save
  end

  def edit
    @cart_item = CartItems.find(params[:id])
  end

  def update
    @cart_item.update(cart_item_params)
  end

  def destroy
    @cart_item = CartItems.find(params[:id])
    @cart_item.destroy
  end

  def clear
    @cart_items = CartItems.all
    @cart_items.destroy.all
  end

  private
  def cart_item_params
      params.require(:cart_item).permit(:quantity)
  end
end

