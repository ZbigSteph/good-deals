class Article < ApplicationRecord
  belongs_to :category
  has_one_attached :image_couverture
  has_many_attached :autres_images
  
  # after_create :set_filename
  
  # def set_filename
  #   if self.active_storage_object.attached?
  #     self.active_storage_object.blob.update(filename: "desired_filename.#{self.active_storage_object.filename.extension}")
  #   end
  # end
end
