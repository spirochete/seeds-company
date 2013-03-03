class AddIpAddressToOrder < ActiveRecord::Migration
  def change
  	add_column :orders, :ip_address, :string
  end
end
