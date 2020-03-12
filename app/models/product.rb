class Product < ApplicationRecord
  has_many :trades, dependent: :destroy
end
