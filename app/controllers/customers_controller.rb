class CustomersController < ApplicationController
  def show
  	@customer = current_customer
  end

  def edit
  	@customer = current_customer
  end

  def withdraw
     @customer = current_customer

  end


  def update
    @customer = current_customer
    if @customer.update(customer_params)
      redirect_to customer_path(@customer.id)
    end
  end

  def destroy
    @customer = current_customer
    if @customer.destroy
      redirect_to root_path
    end
  end


  private
  def customer_params
    params.require(:customer).permit(:surname, :name, :surname_kana, :name_kana, :phone_number, :postal_code, :address, :email, :deleted_at)
  end

end
