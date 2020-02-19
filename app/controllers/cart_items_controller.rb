class CartItemsController < ApplicationController
  def index
    @cart_items = current_customer.cart_items
  end

  def create
    @item = Item.find(params[:item_id])

    @cart_item  = current_customer.cart_items.find_by(item_id: params[:item_id])
    if @cart_item
      @cart_item.quantity += params[:cart_item][:quantity].to_i
    else
      @cart_item = CartItem.new(cart_item_params)
      @cart_item.item_id = params[:item_id]
      @cart_item.customer_id = current_customer.customer_id
    end
      @cart_item.save
      redirect_to item_cart_items_path(@cart_item)
  end

  def edit
    @cart_item = CartItem.find(params[:id])
  end

  def update
    @cart_item = CartItem.find(params[:id])
      @cart_item.update(cart_item_params)
      redirect_to item_cart_items_path(@cart_item)
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to item_cart_items_path(current_customer.id)
  end

  def clear
    @cart_items = CartItem.all
    @cart_items.destroy_all
    redirect_to item_cart_items_path(current_customer.id)
  end

  private
  def cart_item_params
      params.require(:cart_item).permit(:quantity)
  end
end

