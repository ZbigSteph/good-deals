json.extract! slider, :id, :titre, :created_at, :updated_at
json.image_url polymorphic_url(slider.image) if slider.image.attached?
json.url slider_url(slider, format: :json)
