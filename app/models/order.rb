class Order < ApplicationRecord
    has_many :order_items, dependent: :destroy
	has_many :items, through: :order_items
	belongs_to :customer
	#has_one :customer, through: :order_item

	enum order_status: {waiting: 0, varification: 1, production: 2, preparing: 3, sent: 4}

	def orderAddress
		postal_code+shipping_address+delivery_name
  	end
end

