class CreatePricingForms < ActiveRecord::Migration[5.2]
  def change
    create_table :pricing_forms do |t|
      t.references :Product, foreign_key: true
      t.references :Vendor, foreign_key: true

      t.timestamps
    end
  end
end
