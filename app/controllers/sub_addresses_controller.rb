class SubAddressesController < ApplicationController
  def index
    @sub_addresses = current_customer.sub_addresses
    @sub_address = SubAddress.new
  end

  def show
    @sub_address = SubAddress.find(params[:id])

  end

  def create
  	@sub_address = SubAddress.new(sub_address_params)
    @sub_address.customer_id
    @sub_address.customer_id = current_customer.id
    if @sub_address.save
      flash[:notice] = '登録できました'
      redirect_to sub_addresses_path
    else
      flash[:notice] = '入力し切れていませんでした。'
      @sub_addresses = SubAddress.all
      render 'index'
    end
  end

  def update
  	@sub_address = SubAddress.find(params[:id])
    if @sub_address.update(sub_address_params)
      flash[:notice] = '住所を編集しました！'
      redirect_to sub_addresses_path(params[:id])
    else
      flash[:notice] = '入力し切れていませんでした。'
      render 'index'
  end
end

  def destroy
  	sub_address = SubAddress.find(params[:id])
    sub_address.destroy
    redirect_to sub_addresses_path
  end


  private

  def sub_address_params
    params.require(:sub_address).permit(:shipping_address, :delivery_name, :postal_code)
  end


end
