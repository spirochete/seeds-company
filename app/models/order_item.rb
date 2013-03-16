class OrderItem < ActiveRecord::Base
  belongs_to :order, :dependent => :destroy
  has_many :packets
  attr_accessible :cost, :quantity, :packet_id
  attr_accessible :packets_attributes

  def get_packet_name
    @packet = Packet.find(self.packet_id)
    return "#{@packet.seed.common_name}, #{@packet.seed.variety} (#{@packet.packet_size})"
  end
end
