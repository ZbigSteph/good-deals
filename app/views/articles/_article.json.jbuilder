json.extract! article, :id, :category, :label, :description, :prix, :partner
# json.url article_url(article, format: :json)
if article.image_couverture.attached?
  json.iamge_url article.image_couverture
end
