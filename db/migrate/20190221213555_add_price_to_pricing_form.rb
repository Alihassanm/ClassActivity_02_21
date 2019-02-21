class AddPriceToPricingForm < ActiveRecord::Migration[5.2]
  def change
    add_column :pricing_forms, :price, :decimal
  end
end
