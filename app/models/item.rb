class Item < ApplicationRecord
  attachment :item_image
  has_many :cart_items
  has_many :order_items, dependent: :destroy
  has_many :orders, through: :order_items
  belongs_to :genre
# 　enum status: { invalid: false, available: true }
  def priceWithTax
    non_taxed_price * 1.1
  end
end

