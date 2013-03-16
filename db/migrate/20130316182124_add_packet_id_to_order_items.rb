class AddPacketIdToOrderItems < ActiveRecord::Migration
  def change
  	add_column :order_items, :packet_id, :integer
  end
end
