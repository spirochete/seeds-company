class OrderItem < ActiveRecord::Base
  belongs_to :order, :dependent => :destroy
  attr_accessible :cost, :quantity
end
