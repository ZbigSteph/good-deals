json.extract! article, :id, :category, :label, :description, :prix, :image_couverture, :autres_images, :partner
# json.url article_url(article, format: :json)
json.image_url polymorphic_url(article.image_couverture) if article.image_couverture.attached?
