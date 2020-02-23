class CreateBuyers < ActiveRecord::Migration[5.0]
  def change
    create_table :buyers do |t|
      t.string :buyer_name, null: false
      t.string :tel_number
      t.timestamps null: false
    end
  end
end
