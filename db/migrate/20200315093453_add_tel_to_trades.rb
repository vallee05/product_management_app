class AddTelToTrades < ActiveRecord::Migration[5.0]
  def change
    add_column :trades, :tel, :string
  end
end
