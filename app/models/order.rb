class Order < ApplicationRecord
    has_many :order_items
	belongs_to :customer
	has_one :customer, through: :order_item

	enum status: { waiting: 0, varification: 1, production: 2, Preparing: 3, sent: 4}
	def postage
		postage == 800
	end
end
