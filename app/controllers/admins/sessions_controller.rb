class Admins::SessionsController < Devise::SessionsController
  def new
  end
  def create

  	binding.pry
  	redirect_to admins_top_path
  end
end
