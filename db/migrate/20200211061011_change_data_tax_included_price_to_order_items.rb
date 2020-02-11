class ChangeDataTaxIncludedPriceToOrderItems < ActiveRecord::Migration[5.2]
  def change
    change_column :order_items, :tax_included_price, :integer
  end
end
