class Category < ApplicationRecord
    has_many :sous_categories
    has_one_attached :image
    def display_name
        nom_category.to_s
    end

end
