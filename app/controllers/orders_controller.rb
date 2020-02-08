class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    # @order = Order.find(params[:id])
  end

  def new
  end

  def check
  end

  def create
    # @order = Order.new(order_params)
  end

  def thanks
  end
end
