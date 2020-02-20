class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :order_id, null: false
      t.integer :item_id, null: false
      t.integer :order_quantity, null: false
      t.string :tax_included_price, null: false
      t.integer :create_status,default: 0, null: false, limit: 1

      t.timestamps
    end
  end
end
