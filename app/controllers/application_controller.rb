class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?


	def after_sign_in_path_for(resource)
     if resource.is_a?(Staff)
       staffs_root_path
     else
    	items_path
  	 end
  end

  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :staff
       new_staff_session_path
     else
      root_path
    end
  end

	private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:surname, :name, :surname_kana, :name_kana, :phone_number, :postal_code, :address, :email, :deleted_at, :encrypted_password])
  end
end
