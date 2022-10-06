json.extract! article, :id, :category, :label, :description, :prix, :partner
# json.url article_url(article, format: :json)
json.image_url rails_blob_path(article.image_couverture)

