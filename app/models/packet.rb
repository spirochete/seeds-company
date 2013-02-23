class Packet < ActiveRecord::Base
  belongs_to :seed
  attr_accessible :discount_percentage, :packet_size, :price, :quantity_available
end
