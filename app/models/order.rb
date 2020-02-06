class Order < ApplicationRecord
    has_many :order_items

	belong_to :customers

	enum status: { waiting: 0, varification: 1, production: 2, Preparing: 3, sent: 4}
end
