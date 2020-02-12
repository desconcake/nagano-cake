class Admins::BaseController < ApplicationController
	# before action : admin_login_required

  	private def admin_login_required
    	raise Forbidden unless current_member&.administrator?
  	end
end
