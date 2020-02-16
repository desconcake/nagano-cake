class Staffs::OrdersController < ApplicationController
	def index
		@orders = Order.all
		# @total = 0
		# @orders.order_items.each do |order|
		# 	@total += order.order_quantity
		# end
		# if params[:place] == "top"
		# elsif params[:id] == customer_params[:id]
		# else @order = Order.all
		# end
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
		@order = Order.update(order_params)
	end

	private
	def order_params
	    params.require(:order).permit(:shipping_address, :order_status, :method_of_payment)
	    params.require(:order_item).premit(:order_quantity, :tax_inckluded_price, :create_status)
	end
end
