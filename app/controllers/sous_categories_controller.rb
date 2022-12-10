class SousCategoriesController < InheritedResources::Base

  private

    def sous_category_params
      params.require(:sous_category).permit(:titre, :category_id)
    end

end
