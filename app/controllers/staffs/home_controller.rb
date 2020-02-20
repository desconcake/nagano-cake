class Staffs::HomeController < ApplicationController
	before_action :authenticate_staff!
  def top
  	@orders_count = Order.where(created_at: Date.current.all_day)
  		.order("created_at")
  		.count
  end
end
 