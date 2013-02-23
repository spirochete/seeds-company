class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.decimal :cost, :precision => 6, :scale => 2
      t.references :order

      t.timestamps
    end
    add_index :order_items, :order_id
  end
end
