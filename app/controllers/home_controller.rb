class HomeController < ApplicationController
  def top
	@items = Item.page(params[:page]).reverse_order
    @items_count = Item.count
    @genres = Genre.where(genre_status: true)
  end

  def about
  end
end
