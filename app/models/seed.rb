class Seed < ApplicationRecord
  mount_uploaders :image, ImageUploader
  serialize :image
  has_many :prices
end
