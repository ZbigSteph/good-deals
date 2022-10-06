json.extract! article, :id, :category, :label, :description, :prix, :image_couverture, :autres_images, :partner
# json.url article_url(article, format: :json)
json.iamge_url article.image_couverture do |ad|
  url_for(ad.image_couverture)
end
