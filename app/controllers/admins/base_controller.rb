class Admins::BaseController < ApplicationController
	before action : admin_login_required
end
