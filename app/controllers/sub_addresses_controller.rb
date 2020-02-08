class SubAddressesController < ApplicationController
  def index

  end

  def show

  end



  def create
  	@sub_address = Sub_Address.new(sub_address_params)
  end

  def update
  	@sub_address = Sub_Address.find(params[:id])
  end

  def destroy
  	sub_address = Sub_Address.find(params[:id])
  end
end
