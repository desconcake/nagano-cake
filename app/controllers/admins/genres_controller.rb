class Admins::GenresController < ApplicationController

  def index
  	@genres = Genre.all
  	@genre = Genre.new

  end

  def create
  	@ganre = Genre.new(genre_params)
  	if @genre.save
  		redirect_to admins_genres_path
  	end
  end

  def edit
  	@genre = Genre.find(params[:id])
  end

<<<<<<< HEAD
  def new

  end

  def create
  	@genre = Genre.new(genre_params)
  end
=======
>>>>>>> develop

  def update
  	@genre = Genre.find(params[:id])
  	if @genre.update(genre_params) 
  		redirect_to admins_genres_path(@genre)
  	else
  	　render :edit
  	end
  end


  	private
  	def genre_params
  		params.require(:genre).parmit(:name, :genre_status)
    end
end
