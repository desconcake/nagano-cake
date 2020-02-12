module ApplicationHelper
	def resource
	   @resource ||= Admin.new
	end
	def resource_name
   		:admin
	end

	def devise_mapping
   		@devise_mapping ||= Devise.mappings[:admin]
	end


end
