class OrderItem < ActiveRecord::Base
  belongs_to :order
  attr_accessible :cost, :quantity
end
