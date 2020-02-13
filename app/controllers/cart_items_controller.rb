class CartItemsController < ApplicationController
  def index
    @cart_items = CartItem.all
  end

  def create
    @item = Item.find(params[:item_id])
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.customer_id = current_customer.id
    @cart_item.item_id = @item.id
    if
      @cart_item.item_id ==! CartItem.find(current_customer.cart_items.item_id)
      @cart_item.save
    else
      @cart_item.quantity.update
    end
    redirect_to item_cart_items_path(@cart_item)
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

