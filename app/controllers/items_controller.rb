class ItemsController < ApplicationController

	def index
		@items = Items.all
	end

	def show
		@item = Items.find(params[:id])
		@quanity = OrderItems.new
	end

	private
	def item_params
	  params.require(:item).permit(:name, :item_image_id, :non_taxed_price, :description)
	end

end