class Image < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :img_url, presence: true
end