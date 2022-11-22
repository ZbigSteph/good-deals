json.extract! article, :id, :category, :label, :description, :prix, :image_couverture, :partner
# json.url article_url(article, format: :json)
json.image_url polymorphic_url(article.image_couverture) if article.image_couverture.attached?
json.autres_images_url article.autres_images.each do |img|
  polymorphic_url(img) if article.autres_images.attached?
end
