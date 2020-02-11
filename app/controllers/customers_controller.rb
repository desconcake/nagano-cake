class CustomersController < ApplicationController
  def show
  	@customer = Customer.find(params[:id])
  end

  def edit
  	@customer =Customer.find(params[:id])
  end

  def withdraw
    # @customer =Customer.current
    # if @customer.update(customer_params)
      # redirect_to root_path
  # end
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.uodate(customer_params)
      redirect_to customers_path()
    end
  end

end
