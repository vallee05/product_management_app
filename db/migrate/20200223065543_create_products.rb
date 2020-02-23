class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.text :product_name
      t.timestamps null: true
    end
  end
end
