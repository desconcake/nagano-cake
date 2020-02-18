class Staffs::OrdersController < ApplicationController

	def index

		if params[:customer_id] != nil
			@orders = Order.where(customer_id: params[:customer_id]).page(params[:page]).reverse_order
    else
    	@orders = Order.all
   	end

	  if params[:place] && params[:place] == 'top'
         	@orders = Order.where(created_at: Date.current.all_day)
            .order("created_at")
        	@orders_count = @orders.count
    elsif params[:id]
		 	@customer = Customer.find(params[:id])
		   	@orders = @customer.orders
		else
			@orders = Order.all


	end

	def show
    	@order = Order.find(params[:id])
		# @orders = @order.order_items
		# @items = @orders.items
		# @subtotal = @items.subtotal #小計
	end

	def edit
		@genre = Genre.all
		@order = Order.find(params[:id])
		@status = OrderItems.find(params[:id])
	end

	def update
		@order = Order.find(params[:id])
		@order.update(order_params)
		redirect_to staffs_order_path(@order)
	end
	def item_update
		order_item = OrderItem.find(params[:id])
		order_item.update(order_item_params)
		redirect_to staffs_order_path(order_item.order.id)
	end
	private
	def order_params
	    params.require(:order).permit(:shipping_address, :order_status, :method_of_payment)
	    # params.require(:order_item).premit(:order_quantity, :tax_inckluded_price, :create_status)
	end
	def order_item_params
		params.require(:order_item).permit(:create_status)
	end



	def place_params
		params.require(:place).permit("top")
	end
end



