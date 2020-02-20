class Staffs::BaseController < ApplicationController
	before action : staff_login_required

  	private def staff_login_required
    	raise Forbidden unless current_member&.staffistrator?
  	end

     def after_sign_up_path_for(resource)
    staffs_home_top_path(resource)
    end
end
