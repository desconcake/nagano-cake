class OrdersController < ApplicationController
  def index
    @orders = current_customer.orders
    # @order_items = @orders.order_items
    # @items = Item.all(params[:id])

  end

  def show
    @order = Order.find(params[:id])
    @order_item = OrderItem.find(params[:id])
    # @customer.id = current_customer.id
    # @item = @orders.order_items.items
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
    if params[:method_of_payment] == "true"
    else
    "false"

    end
    # binding.pry
    # if radio_num == "1"
      # @address = params[:address]
    # elsif radio_num == "2"
      # @address = params[:sub_address]
    # elsif radio_num == "3"
      # @address = params[:new_sub_address]
    # end
    #binding.pry
    #@order.shipping_address = params[:address]

  end

  def create

    @order = Order.new(order_params)
    @order.customer_id = current_customer.id
    @order.save
    a = params[:order][:address]
    #binding.pry
    b = a.split
    @order = Order.new(order_params)
    @order.postale_code = b[0]
    @order.shipping_address = b[1]
    @order.delivery_name = b[2]
    @order.postage = 800
    #binding.pry
    @order.customer_id = current_customer.id
    @order_items = OrderItem.where(order_id: @order.id)

  end

  def thanks
    @order = Order.find(params[:id])
  end

  private

   def order_params
    params.require(:order).permit(:customer_id, :delivery_name, :postale_code, :shipping_address, :method_of_payment, :postage, :billing_amount)
  end

  def item_params
     params.require(:item).permit(:name)
  end

  def customer_params
     params.require(:customer).permit(:delivery_name, :postal_code, :shipping_address)
  end





end
