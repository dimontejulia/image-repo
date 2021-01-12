class Image < ActiveRecord::Base
  mount_uploader :image_url, ImageUploader

  validates :name, presence: true
  validates :description, presence: true
end
