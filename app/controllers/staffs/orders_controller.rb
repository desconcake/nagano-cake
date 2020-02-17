class Staffs::OrdersController < ApplicationController
  	def index
		if
			params[:place] == "top"
		@orders_count = Order.where(created_at: Date.current.beginning_of_day)
  		.order("DAY(created_at)")
  		.count
  		elsif params[:id] == customer_params[:id]
  		else @order = Order.all
	end

	def show
		@order = Order.find(params[:id])
		@orders = @order.order_items
		@items = @orders.items
		@subtotal = @items.subtotal #小計
	end

	def edit
		@genre = Genre.all
		@order = Order.find(params[:id])
		@status = OrderItems.find(params[:id])
	end

	def update
		@order = Order.update(order_params)
		@order_items = OrderItems.update(order_params)
	end

	private
	def order_params
	    params.require(:order).permit(:shipping_address, :order_status, :method_of_payment)
	    params.require(:order_item).premit(:order_quantity, :tax_inckluded_price, :create_status)
	    params.require(:place).permit("top")
	end
end


