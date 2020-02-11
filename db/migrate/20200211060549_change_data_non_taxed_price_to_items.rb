class ChangeDataNonTaxedPriceToItems < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :non_taxed_price, :integer
  end
end
