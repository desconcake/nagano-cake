class Item < ApplicationRecord
  has_many :cart_items
  has_many :order_items
  belongs_to :genre
  def Tax_included_price
	self.tax_included_price * 1.08.round
  end
end
