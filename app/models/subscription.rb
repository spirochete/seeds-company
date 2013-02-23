class Subscription < ActiveRecord::Base
  belongs_to :customer
  attr_accessible :subscribed, :subscription_type
end
