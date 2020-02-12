class Item < ApplicationRecord
  has_many :cart_items
  has_many :order_items
  belongs_to :genre
  def priceWithTax(on_taxed_price)
    puts on_taxed_price * 1.08
　end
end
