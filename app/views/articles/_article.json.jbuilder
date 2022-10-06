json.extract! article, :id, :category, :label, :description, :prix, :partner
# json.url article_url(article, format: :json)
json.image_url url_for(article.image_couverture)

