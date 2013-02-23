class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :customer
      t.string :subscription_type
      t.boolean :subscribed

      t.timestamps
    end
    add_index :subscriptions, :customer_id
  end
end
