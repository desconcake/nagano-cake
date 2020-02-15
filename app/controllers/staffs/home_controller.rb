class Staffs::HomeController < ApplicationController
	before_action :authenticate_staff!
  def top
  	@orders_count = Order.where(created_at: Date.current.beginning_of_day)
  		.order("DAY(created_at)")
  		.count
  end
end
