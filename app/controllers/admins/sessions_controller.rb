class Admins::SessionsController < Devise::SessionsController
  def new
  end

  def create
  	redirect_to admins_top_path
  end
end
