class OrdersController < ApplicationController
  def index
    @orders = Order.all
    # @items = Item.all(params[:id])

  end

  def show
    # @order = Order.find(params[:id])
    # @customer.id = current_customer.id
    @item = @orders.order_items.items
  end

  def new
    @order = Order.new
    @sub_addresses = SubAddress.all
    # @sub_addresses = @order.sub_addresses
    # @sub_addresses = SubAddress.find(params[:id])
    @sub_address = SubAddress.new

    # if @sub_address.save



  end

  def check
    # binding.pry
    @order = Order.find(params[:id])
  end

  def create
    
    @order = Order.new(order_params)
    @order.customer_id = current_customer.id
    @order.save
  end

  def thanks
    @order = Order.find(params[:id])
  end

  private

  # def order_params
    # params.require(:order).permit(:shipping_address, :sale_status, :created_at)
  # end

  def item_params
     params.require(:item).permit(:name)
  end

  def customer_params
     params.require(:customer).permit(:delivery_name, :postal_code, :shipping_address)
  end



end
