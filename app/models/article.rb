class Article < ApplicationRecord
  belongs_to :category
  belongs_to :partner
  has_one_attached :image_couverture
  has_many_attached :autres_images
end
