class CustomersController < ApplicationController
  def show
  	@customer = Customer.find(params[:id])
  end

  def edit
  	@customer =Customer.find(params[:id])
  end

  def withdraw
     @customer = current_customer
     # @customer.destroy
    # if @customer.update(customer_params)
      # redirect_to root_path
    # end
  end

  def destroy
    @customer = current_customer
    if @customer.destroy
      redirect_to root_path
    end
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.uodate(customer_params)
      redirect_to customers_path()
    end
  end

end
