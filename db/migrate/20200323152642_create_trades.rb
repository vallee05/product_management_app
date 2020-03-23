class CreateTrades < ActiveRecord::Migration[5.0]
  def change
    create_table :trades do |t|
      t.string :date
      t.string :buyer, null: false
      t.string :product
      t.string :price
      t.string :staff
      t.string :payment_date
      t.string :delivery_date
      t.string :storage_location
      t.string :memo
      t.string :contact_data
      t.string :tel
      t.timestamps
    end
  end
end
