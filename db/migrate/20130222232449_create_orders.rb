class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :order_date
      t.decimal :subtotal, :precision => 6, :scale => 2
      t.decimal :shipping_cost, :precision => 6, :scale => 2
      t.string :shipping_method
      t.text :shipping_instructions
      t.string :payment_method
      t.string :order_status

      t.timestamps
    end
  end
end
