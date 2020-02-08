class Admins::OrdersController < ApplicationController
	# def index
	# 	@orders = Order.all
	# end

	# def show
	# 	@order = Order.find(params[:id])
	# 	@customer = @order.customer
	# 	@order_items = @order.order_items
	# 	@items = @order_items.item
	# end

	# def edit
	# 	@order_status = Order.find(params[:id])
	# 	@create_status = Order_items.find(params[:id])
	# end

	# def update
	# 	@order_status = Order.update(order_params)
	# 	@order_items = Order_items.update(order_params)
	# end

	# private
	# # def order_params
	# #     params.require(:order).permit(:shipping_address, :order_status, :method_of_payment)
	# #     params.require(:order_item).premit(:order_quantity, :tax_inckluded_price, :create_status)
	# # end
end
