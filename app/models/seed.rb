class Seed < ActiveRecord::Base
  has_many :packets
  has_many :photos, :dependent => :destroy
  accepts_nested_attributes_for :packets, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :photos, :reject_if => :all_blank, :allow_destroy => true
  
  attr_accessible :catalog_number, :common_name, :date_acquired, :days_to_maturity, :genus
  attr_accessible :germination, :notes, :organic, :origin, :seed_type, :species, :sub_species, :variety
  attr_accessible :featured, :categories
  attr_accessible :packets_attributes
  attr_accessible :photos_attributes

  validates_presence_of :catalog_number, :common_name, :variety
end
