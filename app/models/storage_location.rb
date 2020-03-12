class StorageLocation < ApplicationRecord
  has_many :trades, dependent: :destroy
end
