class CustomersController < ApplicationController
  def show
  	@customer = Customer.find(params)
  end

  def edit
  	@customer =Customer.find(params)
  end

  def withdraw
    @customer =Customer.find(params)
    if @customer.update(customer_params)
      redirect_to root_path
  end
end

  def update
    @customer = Customer.find(params)
    if @customer.uodate(customer_params)
      redirect_to customers_path()
  end

end
