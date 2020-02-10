class Order < ApplicationRecord
    has_many :order_items

	belongs_to :customer

	enum status: { waiting: 0, varification: 1, production: 2, Preparing: 3, sent: 4}
end
