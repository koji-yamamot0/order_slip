class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :sum,      null: false
      t.integer :quantity, null: false
      t.timestamps
    end
  end
end
