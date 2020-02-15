class OrdersController < ApplicationController
  def index
    @orders = current_customer.orders
    # @order_items = @orders.order_items
    # @items = Item.all(params[:id])

  end

  def show
    # @order = Order.find(params[:id])
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
    # binding.pry
    @order = Order.new(order_params)
    @order.shipping_address = params[:order][:address]
    @order.shipping_address = params[:order][:address]
    @order.postale_code = params[:order][:postale_code]
    # @order.shipping_address = params[:shipping_address]

    # if @order.valid?
      # render :action => 'check'

    # else
      # render :action => 'new'
      # flash[:notice] = '入力漏れがあります。'
  # 　end

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
