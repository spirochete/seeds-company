class Photo < ActiveRecord::Base
  attr_accessible :photo_url, :photo_url_cache

  belongs_to :seed, :polymorphic => true
  mount_uploader :photo_url, PhotoUploader

  def photo_url=(val)
    if !val.is_a?(String) && valid?
      photo_url_will_change!
      super
    end
  end

end
