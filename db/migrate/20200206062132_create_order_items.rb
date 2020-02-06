class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :item_id
      t.integer :order_quantity
      t.string :tax_included_price
      t.integer :create_status,default: 0, null: false, limit: 1

      t.timestamps
    end
  end
end
