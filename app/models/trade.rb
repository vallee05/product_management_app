class Trade < ApplicationRecord
  validates :buyer, presence: true
end
