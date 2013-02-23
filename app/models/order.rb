class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :order_items
  attr_accessible :order_date, :order_status, :payment_method, :shipping_cost, :shipping_instructions, :shipping_method, :subtotal
end
