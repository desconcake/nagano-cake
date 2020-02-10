class Admins::GenresController < ApplicationController

  def index
  	@genre = Genre.new
  end

  def edit
  	@genre = Genre.find(params[:id])
  end

  def create
  	@genre = Genre.new(genre_params)
  end

  def update
  	@genre = Genre.find(params[:id])
  	if @genre = update(book_params)
  	else
  		render :edit
  	end
  end

end
