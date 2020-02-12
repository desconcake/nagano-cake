class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?


	def after_sign_in_path_for(resource)
    if resource.is_a?(Admin)
      binding.pry
      admins_root_path
    else
      binding.pry
    	customer_path(resource.id)
  	end
  end

  	def after_sign_out_path_for(resource)
    	root_path
  	end

	private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:surname, :name, :surname_kana, :name_kana, :phone_number, :postal_code, :address, :email, :deleted_at, :encrypted_password])
  end
end
