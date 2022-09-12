json.extract! article, :id, :category_id, :label, :description, :prix, :image_couverture, :autres_images, :created_at, :updated_at
json.url article_url(article, format: :json)
