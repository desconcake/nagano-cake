class Staffs::CustomersController < ApplicationController

def index
    @customers = Customer.with_deleted.page(params[:page])
  end

  def show
  @customer = Customer.with_deleted.find(params[:id])
  end

  def edit
    @customer = Customer.with_deleted.find(params[:id])
  end

  def update
    @customer = Customer.with_deleted.find(params[:id])
    if params[:customer][:deleted_at] == "無効"
    @customer.delete
    else
    @customer.restore
    end

    if @customer.update(customer_params)
      flash[:notice] = "You have updated customer successfully"
      redirect_to staffs_customer_path(@customer.id)
    else
      render 'edit'
    end
    #binding.pry
  end

  #def destroy
    #@customer = Customer.find(params[:id])
    #if @customer.destroy
      #redirect_to staffs_customer_path(@customer.id)
    #end

   private
  def customer_params
    params.require(:customer).permit(:surname, :name, :surname_kana, :name_kana, :phone_number, :postal_code, :address, :email, :customer_status)
  end
end
