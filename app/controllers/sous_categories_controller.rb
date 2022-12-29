class SousCategoriesController < InheritedResources::Base
  skip_before_action :authenticate_request, only: %i[index show]
  before_action :set_sous_category, only: %i[show edit update destroy]

  # GET /categories or /categories.json
  def index
    @sous_categories = SousCategory.all
  end

  # GET /categories/1 or /categories/1.json
  def show; end

  private

  def set_sous_category
    @sous_category = SousCategory.find(params[:id])
  end

  def sous_category_params
    params.require(:sous_category).permit(:titre, :category_id)
  end
end
