class OrderItem < ApplicationRecord

    class Item
	def price_with_tax
		1000 * 1.08
	end


​

	belongs_to :order
	belongs_to :item
	enum status:{impossible:0,waiting:1,making:2,completed:3}
end

end
