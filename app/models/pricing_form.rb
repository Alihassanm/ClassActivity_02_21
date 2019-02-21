class PricingForm < ApplicationRecord
  belongs_to :Product
  belongs_to :Vendor
end
