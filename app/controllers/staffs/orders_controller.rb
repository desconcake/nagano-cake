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
	def place
		params.require(:plase)
	end
end