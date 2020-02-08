class CreateSubAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_addresses do |t|
      t.integer :customer_id, null: false
      t.string :shipping_address, null: false
      t.string :postal_code, null: false
      t.string :delivery_name, null: false

      t.timestamps
    end
  end
end
