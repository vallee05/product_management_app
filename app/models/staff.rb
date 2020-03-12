class Staff < ApplicationRecord
  has_many :trades, dependent: :destroy
end
