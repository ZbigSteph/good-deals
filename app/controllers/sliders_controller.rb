class SlidersController < InheritedResources::Base
  skip_before_action :authenticate_request, only: %i[create index show articles_by_partner]

  def index
    @sliders = Slider.all
  end

  private

    def slider_params
      params.require(:slider).permit(:titre)
    end

end
