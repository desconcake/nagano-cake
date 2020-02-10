class OrderItem < ApplicationRecord
	belongs_to :order
	belongs_to :item
	enum status:{impossible:0,waiting:1,making:2,completed:3}
	def subtotal
		self.order_quantity * self.tax_included_price
	end
end
