class Seed < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :prices
end
