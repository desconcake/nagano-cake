class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :genre_id, null: false
      t.string :name, null: false
      t.string :item_image_id
      t.string :non_taxed_price, null: false
      t.string :description, null: false
      t.boolean :sale_status, null: false, default: true

      t.timestamps
    end
  end
end
