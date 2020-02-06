class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :item_image_id
      t.string :non_taxed_price
      t.string :description
      t.boolean :sale_status, null: false, default: true

      t.timestamps
    end
  end
end
