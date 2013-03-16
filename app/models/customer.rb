class Customer < ActiveRecord::Base

  has_many :orders	
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  attr_accessible :first_name, :last_name, :address_one, :address_two, :city, :state_province
  attr_accessible :country, :postal_code, :business_name, :phone_number

  validates_presence_of :first_name, :last_name, :address_one, :city, :state_province, :country, :postal_code, :phone_number

  accepts_nested_attributes_for :orders
  attr_accessible :orders_attributes

end
