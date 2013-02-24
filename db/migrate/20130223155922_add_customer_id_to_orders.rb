class AddCustomerIdToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :customer, :references
  end
  add_index :orders, :customer_id
end
