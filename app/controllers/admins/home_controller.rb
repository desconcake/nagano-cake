class Admins::HomeController < ApplicationController
  def top
  	@orders_count = Order.where(created_at: Date.current.beginning_of_day)
  		.order("DAY(created_at)")
  		.count
  		
  end
end
