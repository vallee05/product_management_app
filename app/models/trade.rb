class Trade < ApplicationRecord
  belongs_to :buyer
  belongs_to :product
  belongs_to :staff
  belongs_to :storage_location
end
