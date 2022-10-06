json.extract! article, :id, :category, :label, :description, :prix, :image_couverture, :autres_images, :user
json.url article_url(article, format: :json)
