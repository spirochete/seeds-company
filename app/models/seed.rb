class Seed < ActiveRecord::Base
  has_many :packets
  has_many :photos
  accepts_nested_attributes_for :packets, :reject_if => :all_blank, :allow_destroy => true
  attr_accessible :catalog_number, :common_name, :date_acquired, :days_to_maturity, :genus, :germination, :notes, :organic, :origin, :seed_type, :species, :sub_species, :variety
  attr_accessible :packets_attributes
end
