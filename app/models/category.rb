class Category < ApplicationRecord
    has_many :sous_categories
    def display_name
        nom_category.to_s
    end

end
