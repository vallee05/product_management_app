class CreateMemos < ActiveRecord::Migration[5.0]
  def change
    create_table :memos do |t|
      t.string :memo

      t.timestamps
    end
  end
end
