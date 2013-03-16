class Packet < ActiveRecord::Base
  belongs_to :seed
  belongs_to :order_item
  attr_accessible :discount_percentage, :packet_size, :price, :quantity_available

  
end
