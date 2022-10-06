json.extract! article, :id, :category, :label, :description, :prix, :image_couverture, :autres_images, :partner
# json.url article_url(article, format: :json)
if article.image_couverture.attached?
  json.iamge_url rails_blob_path(article.image_couverture.url,
                                 disposition: 'attachment')
end
