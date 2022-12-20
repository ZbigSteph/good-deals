class SousCategoriesController < InheritedResources::Base
  skip_before_action :authenticate_request, only: %i[index show]
  
  private

    def sous_category_params
      params.require(:sous_category).permit(:titre, :category_id)
    end

end
