class CreateTrades < ActiveRecord::Migration[5.0]
  def change
    create_table :trades do |t|
      t.string :date
      t.references :buyer, foreign_key: true
      t.references :product, foreign_key: true
      t.string :price
      t.references :staff, foreign_key: true
      t.string :payment_date
      t.string :delivery_date
      t.references :storage_location, foreign_key: true
      t.timestamps
    end
  end
end
