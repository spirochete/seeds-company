class Photo < ActiveRecord::Base
  belongs_to :seed
  attr_accessible :photo_url
end
