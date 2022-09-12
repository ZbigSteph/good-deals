class Category < ApplicationRecord

    def display_name
        nom_category.to_s
    end

end
