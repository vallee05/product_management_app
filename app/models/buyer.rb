class Buyer < ApplicationRecord
  has_many :trades, dependent: :destroy
end
