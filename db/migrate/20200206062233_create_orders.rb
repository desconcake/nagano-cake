class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :customer_id :null => false
      t.integer :billing_amount :null => false
      t.integer :postage :null => false
      t.string :method_of_payment :null => false
      t.string :delivery_name :null => false
      t.string :shipping_address :null => false
      t.string :postale_code :null => false
      t.string :order_status, default: 0, null: false, limit: 1

      t.timestamps
    end
  end
end
