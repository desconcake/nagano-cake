module ApplicationHelper
	def resource
	   @resource ||= Staff.new
	end
	def resource_name
   		:staff
	end

	def devise_mapping
   		@devise_mapping ||= Devise.mappings[:staff]
	end


end
 