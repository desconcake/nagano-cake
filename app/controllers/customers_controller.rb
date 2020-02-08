class CustomersController < ApplicationController
  def show
  	@customer = Customer.find(params[:id])
  end

  def edit
  	@customer =Customer.find(params)
  	redirect_to user_path
  end

  def withdraw
  end

  def update
  end

end
