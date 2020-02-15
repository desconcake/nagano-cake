class Admins::ItemsController < ApplicationController
	def index
		@items = Item.all 
	end

	def show
		@item = Item.find(params[:id])
		@genre = @item.genre
	end

	def new
		@item = Item.new
		@genres = Genre.all #ジャンルのセレクトボックス
	end

	def create
		@item = Item.new(item_params)
		@item.save
		redirect_to admins_item_path(@item)
	end

	def edit
		@item = Item.find(params[:id])
		@genres = Genre.all #ジャンルのセレクトボックス
	end

	def update
		@item = Item.find(params[:id])
		if   @item.update(item_params)
     	     flash[:notice] = "You have updated user successfully"
    	     redirect_to admins_item_path(@item.id)
    	else render 'edit'
    	end
	end

	private
	def item_params
	    params.require(:item).permit(:name, :sale_status, :genre_id, :item_image, :non_taxed_price, :description)
	end
end
  