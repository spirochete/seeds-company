class Order < ActiveRecord::Base
  belongs_to :customer, :dependent => :destroy
  has_many :order_items
  attr_accessible :order_date, :order_status, :payment_method, :shipping_cost
  attr_accessible :shipping_instructions, :shipping_method, :subtotal

  accepts_nested_attributes_for :order_items
  attr_accessible :order_items_attributes
end
