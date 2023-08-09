class SlidersController < InheritedResources::Base

  private

    def slider_params
      params.require(:slider).permit(:titre)
    end

end
