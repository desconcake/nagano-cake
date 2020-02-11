class Admins::CustomersController < ApplicationController

  def index
    @customers = Customer.page(params[:page]).reverse_order
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to customer_path(@customer.id)
  end

  private
  def customer_params
    params.require(:customer).permit(:surname, :name, :surname_kana, :name_kana, :phone_number, :postal_code, :address, :email, :customer_status)
  end
end
