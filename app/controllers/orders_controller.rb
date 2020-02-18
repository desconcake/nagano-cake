class OrdersController < ApplicationController
  def index
    @orders = current_customer.orders
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
    @sub_addresses = SubAddress.where(customer_id: current_customer.id)
    @sub_address = SubAddress.new

  end

  def check
    @order = Order.new
    @method_of_payment = params[:method_of_payment]

    if params[:radio_num] == "1"
      @postal_code = current_customer.postal_code
      @shipping_address = current_customer.address
      @delivery_name = current_customer.full_name

    elsif params[:radio_num] == "2"
      #binding.pry
      address = SubAddress.find(params[:sub_address])
      @postal_code = address.postal_code
      @shipping_address = address.shipping_address
      @delivery_name = address.delivery_name

    elsif params[:radio_num] == "3"
      @postal_code = params[:postal_code]
      @shipping_address = params[:shipping_addres]
      @delivery_name = params[:delivery_name]

      @sub_address = SubAddress.new(sub_address_params)
      @sub_address = [@postal_code, @shipping_address, @delivery_name]
      @sub_address.save
    end

    @cart_items = current_customer.cart_items
    #binding.pry
  end

  def create
    @order = Order.new(order_params)
    @order.postage = 800
    @order.customer_id = current_customer.id

    @order_items = OrderItem.where(order_id: @order.id)

    @order.save

    cart_items = current_customer.cart_items
    cart_items.each do |cart_item|
      @order_item = OrderItem.new
      @order_item.order_id = @order.id
      @order_item.order_quantity = cart_item.quantity
      @order_item.item_id = cart_item.item_id
      @order_item.tax_included_price = cart_item.item.non_taxed_price * 1.1
      @order_item.save
    end
      redirect_to orders_thanks_path


  end

  def thanks
  end

  private

  def order_params
    params.require(:order).permit(:customer_id, :delivery_name, :postal_code, :shipping_address, :method_of_payment, :postage, :billing_amount)
  end

  def sub_address_params
    params.require(:sub_address).permit(:customer_id, :delivery_name, :postal_code, :shipping_address)
  end

  def item_params
     params.require(:item).permit(:name)
  end

  def customer_params
     params.require(:customer).permit(:delivery_name, :postal_code, :shipping_address)
  end

end